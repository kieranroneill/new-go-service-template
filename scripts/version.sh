#!/bin/bash

###
# Updates the version.
###

source ./scripts/set_vars.sh

##
# Main function
##
function main() {
  set_vars

  if [ -z "$1" ]
    then
      printf "%b No version was supplied.\n" "${ERROR_PREFIX}"
      exit 1
  fi

  true > VERSION
  echo "$1" >> VERSION

  printf "%b Version set to: %b\n" "${INFO_PREFIX}" "$1"
}

# And so, it begins...
main "$1"
