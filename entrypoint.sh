#!/bin/bash
set -e

#if keyword if found
if echo "$*" | grep -i -q FIXED;
then
  #do something
  echo "Found keyword!"
#otherwise
else
  #exit gracefully
  echo "Nothing to process"
fi
