set -e
LOCATION=paper-now
jekyll build
s3cmd sync --rexclude "^\." --cf-invalidate --cf-invalidate-default-index ./* _site/* s3://science.onecodex.com/$LOCATION/
