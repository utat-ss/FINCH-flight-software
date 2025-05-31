#!/bin/bash

set -e

source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/../finch-flight-software-env.sh"

cppcheck --enable=all \
  --suppress=missingIncludeSystem \
  --error-exitcode=1 \
  "${FINCH_FLIGHT_SOFTWARE_ROOT}"
