#!/bin/sh

cd format-tests

RESULT_DIR=_results
rm -rf $RESULT_DIR
mkdir $RESULT_DIR

for SOURCE in *.el; do
  zprint '{:search-config? true}' <$SOURCE >$RESULT_DIR/$SOURCE
  diff -Naur $SOURCE $RESULT_DIR/$SOURCE || \
    echo -e '\n-------------------------------------------------------------------------------\n'
done

