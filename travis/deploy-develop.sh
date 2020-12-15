#!/bin/bash

# Scripts for R
if [ "$TARGET" = "R" ]; then
  echo "$(pwd)"
  Rscript -e 'install.packages("pkgdown")'
  Rscript -e 'pkgdown::deploy_site_github()'

# Otherwise
else
  echo 'No script required'
fi
