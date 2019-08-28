#!/bin/bash

set -euxo pipefail

rm *.db
rm *.log

find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf
