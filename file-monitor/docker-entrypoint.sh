#!/bin/bash

# Copyright (c) 2020 Battelle Energy Alliance, LLC.  All rights reserved.

if [[ -z $EXTRACTED_FILE_ENABLE_CLAMAV ]]; then
  EXTRACTED_FILE_ENABLE_CLAMAV=false
fi

if [[ -z $EXTRACTED_FILE_ENABLE_MALASS ]]; then
  [[ ${#MALASS_HOST} -gt 1 ]] && EXTRACTED_FILE_ENABLE_MALASS=true || EXTRACTED_FILE_ENABLE_MALASS=false
fi

if [[ -z $EXTRACTED_FILE_ENABLE_VTOT ]]; then
  [[ ${#VTOT_API2_KEY} -gt 1 ]] && EXTRACTED_FILE_ENABLE_VTOT=true || EXTRACTED_FILE_ENABLE_VTOT=false
fi

export EXTRACTED_FILE_ENABLE_CLAMAV
export EXTRACTED_FILE_ENABLE_MALASS
export EXTRACTED_FILE_ENABLE_VTOT

exec "$@"
