#!/bin/bash
# Validate all SIRI XML examples from the examples/ directory against the SIRI XSD schema
#
# You need the binary `xmllint`
# apt-get install libxml2-utils

# The -e flag causes the script to exit as soon as one command returns a non-zero exit code
set -e

echo "Validating SIRI XML examples ..."

if xmllint --noout --schema xsd/siri.xsd examples/*/*.xml; then
  echo -e '\033[0;32mValidating SIRI XML examples succeeded\033[0m'
else
  echo -e '\033[0;31mValidating SIRI  XML examples failed\033[0m'
  exit 1
fi
