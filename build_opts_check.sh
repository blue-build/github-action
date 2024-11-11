#!/usr/bin/env bash
set -euo pipefail

# Expected env vars:
# SQUASH_INPUT_VALUE
# BUILD_OPTS

if [ "$SQUASH_INPUT_VALUE" != "true" ]; then
  if grep -qE '(-B)|(--build-driver)' <<< "$BUILD_OPTS"; then
    echo 'Cannot provide --build-driver in build_opts while squash is set to true.'
    exit 1
  fi

  if grep -qE '(-s)|(--squash)' <<< "$BUILD_OPTS"; then
    echo 'Cannot provide --squash in build_opts while squash is set to true.'
    exit 1
  fi
fi

if grep -qE '(-p)|(--push)' <<< "$BUILD_OPTS"; then
  echo 'Please do not add --push to build_opts, as the action already provides that argument.'
  exit 1
fi

exit 0
