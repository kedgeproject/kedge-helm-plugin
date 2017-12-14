#!/bin/bash

set -eu

usage() {
cat << EOF
This plugin provides integration with the kedge project.

Available Commands:
  build   Build the Kedge files into Kubernetes artifacts, but don't package.
  package Generated a packaged Helm chart.

Typical usage:

   $ helm create mychart
   $ mkdir -p mychart/kedge
   $ place kedge files in mychart/kedge/
   $ helm package mychart
   $ helm install ./mychart-0.1.0.tgz 

EOF
}

build() {
  kedge generate -f $1/kedge/
}

package() {
  build $1
  helm package $1
}

if [[ $# < 1 ]]; then
  echo "===> ERROR: Subcommand required. Try 'helm kedge help'"
  exit 1
elif [[ $# < 2 && $1 != "help" ]]; then
  echo "===> ERROR: Missing chart path. Use '.' for the present directory."
  exit 1
fi

case "${1:-"help"}" in
  "package")
    package $2
    ;;
  "show")
    show $2
    ;;
  "build")
    build $2
    ;;
  "help")
    usage
    ;;
  *)
    echo $1
    usage
    exit 1
    ;;
esac

