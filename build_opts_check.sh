#!/usr/bin/env bash
set -euo pipefail

# Expected env vars:
# SQUASH_INPUT_VALUE
# BUILD_OPTS

# check_build_opts "option1" "option2" "error_message"
# If you have only 1 option to provide, provide '---' string as 2nd placeholder option
# check_build_opts "option1" --- "error_message"
check_build_opts() {
    local option1="${1}"
    local option2="${2}"
    local error_message="${3}"

    if [[ "${2}" == "---" ]]; then
      if [[ -n "$(awk '/(^|\s)('${option1}')($|\s)/' <<< "${BUILD_OPTS}")" ]]; then
        echo "${error_message}"
        exit 1
      fi
    elif [[ -n "${2}" ]]; then
      if [[ -n "$(awk '/(^|\s)('${option1}'|'${option2}')($|\s)/' <<< "${BUILD_OPTS}")" ]]; then
        echo "${error_message}"
        exit 1
      fi
    fi
}

if [[ "${SQUASH_INPUT_VALUE}" == "true" ]]; then
  check_build_opts "-B" "--build-driver" "Cannot provide '--build-driver' in build_opts while 'squash' is set to true."
  check_build_opts "-s" "--squash" "Cannot provide '--squash' in build_opts while 'squash' is set to true."
fi

check_build_opts "-p" "--push" "Please do not add '--push' to build_opts, as the action already provides that argument."

exit 0
