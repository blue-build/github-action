#!/bin/bash

# Expected env vars:
# SQUASH_INPUT_VALUER
# BUILD_OPTS

if [ "$SQUASH_INPUT_VALUE" != "true" ]; then
  if grep -qE '(-B)|(--build-driver)' <<< "$BUILD_OPTS"; then
    echo 'Cannot provide --build-driver in build_opts while squash = true'
    exit 1
  fi

  if grep -qE '(-s)|(--squash)' <<< "$BUILD_OPTS"; then
    echo 'Cannot provide --squash in build_opts while squash = true'
    exit 1
  fi
fi

if grep -qE '(-p)|(--push)' <<< "$BUILD_OPTS"; then
  echo 'Please do not provide --push in build_opts as the action provides it' \
    ' by default anyway.'
  exit 1
fi

exit 0