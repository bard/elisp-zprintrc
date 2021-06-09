#!/bin/sh

ELISP_DIR=${1-:parse-tests}

if [ $# -gt 1 ]; then
  echo Usage: $(basename) ELISP_DIR_PATH
  exit 1
fi

find -iname '*.el' -exec sh -c 'zprint <{} >/dev/null || echo ...in {}' \; 2>&1
