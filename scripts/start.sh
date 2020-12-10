#!/bin/bash

###
# Builds and runs the service.
###

source ./scripts/set_vars.sh

##
# Main function
##
function main() {
  set_vars

  printf "%b Downloading CompileDaemon module...\n" "${INFO_PREFIX}"
  GO111MODULE=off go get github.com/githubnemo/CompileDaemon

  printf "%b Starting daemon...\n" "${INFO_PREFIX}"
  CompileDaemon --build="go build -o .bin/server cmd/server/main.go" --command=./.bin/server
}

# And so, it begins...
main
