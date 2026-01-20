#!/usr/bin/env bash
set -euo pipefail

# Expected env vars:
# BUILD_OPTS
# INPUT_BUILD_CHUNKED_OCI
# INPUT_RECHUNK
# INPUT_SQUASH

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

sets_clear_plan() {
  [[ "${INPUT_RECHUNK_CLEAR_PLAN}" == 'true' ]]
}

clear_plan_build_opts_check() {
  if sets_clear_plan; then
    check_build_opts "--rechunk-clear-plan" "---" "Cannot provide '--rechunk-clear-plan' in build_opts while 'rechunk_clear_plan' is set to true."
  fi
}

if [[ "${INPUT_BUILD_CHUNKED_OCI}" == 'true' ]]; then
  if [[ "${INPUT_RECHUNK}" == 'true' ]]; then
    echo "Cannot set both 'build_chunked_oci' and 'rechunk' to true."
    exit 1
  fi
  clear_plan_build_opts_check
  check_build_opts "--build-chunked-oci" "---" "Cannot provide '--build-chunked-oci' in build_opts while 'build_chunked_oci' is set to true."
elif [[ "${INPUT_RECHUNK}" == 'true' ]]; then
  clear_plan_build_opts_check
  check_build_opts "--rechunk" "---" "Cannot provide '--rechunk' in build_opts while 'rechunk' is set to true."
elif sets_clear_plan; then
  echo "Cannot set 'rechunk_clear_plan' when 'build_chunked_oci' and 'rechunk' are both false."
  exit 1
fi

if [[ "${INPUT_SQUASH}" == "true" ]]; then
  check_build_opts "-B" "--build-driver" "Cannot provide '--build-driver' in build_opts while 'squash' is set to true."
  check_build_opts "-s" "--squash" "Cannot provide '--squash' in build_opts while 'squash' is set to true."
fi

check_build_opts "-p" "--push" "Please do not add '--push' to build_opts, as the action already provides that argument."

exit 0
