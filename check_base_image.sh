#!/usr/bin/env bash
# check_base_image.sh - Check if the base image digest has changed
#
# Usage: check_base_image.sh <recipe_path>
#
# Exits 0 if the base image digest is unchanged (skip build)
# Exits 1 if the digest has changed, is unavailable, or no cache exists (proceed with build)
#
# Cache file: .base-image-digest (contains the last known digest string)

set -uo pipefail

RECIPE_PATH="${1:-}"
CACHE_FILE=".base-image-digest"

# --- Argument validation ---
if [[ -z "${RECIPE_PATH}" ]]; then
	echo "Error: recipe path argument is required." >&2
	echo "Usage: check_base_image.sh <recipe_path>" >&2
	exit 1
fi

if [[ ! -f "${RECIPE_PATH}" ]]; then
	echo "Warning: recipe file not found at '${RECIPE_PATH}'. Proceeding with build." >&2
	exit 1
fi

parse_yaml_field() {
	local field="${1}"
	local file="${2}"
	# mikefarah/yq v4 syntax
	yq e ".\"${field}\" // \"\"" "${file}" 2>/dev/null
}

# --- Parse recipe fields ---
echo "Checking base image for recipe: ${RECIPE_PATH}"

BASE_IMAGE="$(parse_yaml_field "base-image" "${RECIPE_PATH}")"
IMAGE_VERSION="$(parse_yaml_field "image-version" "${RECIPE_PATH}")"

if [[ -z "${BASE_IMAGE}" ]]; then
	echo "Warning: 'base-image' field not found in recipe. Proceeding with build." >&2
	exit 1
fi

if [[ -z "${IMAGE_VERSION}" ]]; then
	echo "Warning: 'image-version' field not found in recipe. Proceeding with build." >&2
	exit 1
fi

IMAGE_REF="${BASE_IMAGE}:${IMAGE_VERSION}"
echo "Base image reference: ${IMAGE_REF}"

# --- Get current digest with 30s timeout ---
# Use skopeo to query the image digest directly from the registry without pulling the image
get_image_digest() {
	local image="${1}"
	timeout 30s skopeo inspect --format '{{.Digest}}' --retry-times 2 "docker://${image}" 2>/dev/null
}

echo "Fetching current digest for ${IMAGE_REF} ..."
CURRENT_DIGEST=""

if ! CURRENT_DIGEST="$(get_image_digest "${IMAGE_REF}")"; then
	echo "Warning: Failed to fetch manifest for '${IMAGE_REF}' (timeout or error). Proceeding with build." >&2
	exit 1
fi

if [[ -z "${CURRENT_DIGEST}" ]]; then
	echo "Warning: Could not extract digest from manifest for '${IMAGE_REF}'. Proceeding with build." >&2
	exit 1
fi

echo "Current digest: ${CURRENT_DIGEST}"

# --- Compare with cached digest ---
if [[ ! -f "${CACHE_FILE}" ]]; then
	echo "No cache file found (${CACHE_FILE}). Saving digest and proceeding with build."
	printf '%s\n' "${CURRENT_DIGEST}" >"${CACHE_FILE}"
	exit 1
fi

CACHED_DIGEST="$(cat "${CACHE_FILE}" 2>/dev/null || true)"

if [[ -z "${CACHED_DIGEST}" ]]; then
	echo "Cache file is empty. Saving digest and proceeding with build."
	printf '%s\n' "${CURRENT_DIGEST}" >"${CACHE_FILE}"
	exit 1
fi

echo "Cached digest: ${CACHED_DIGEST}"

if [[ "${CURRENT_DIGEST}" == "${CACHED_DIGEST}" ]]; then
	echo "Base image is unchanged. Skipping build."
	exit 0
else
	echo "Base image has changed! Updating cache and proceeding with build."
	printf '%s\n' "${CURRENT_DIGEST}" >"${CACHE_FILE}"
	exit 1
fi
