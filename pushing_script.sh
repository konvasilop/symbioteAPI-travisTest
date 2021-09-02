#!/bin/bash -e

: "${GITHUB_ACCESS_TOKEN?}" "${GITHUB_REPO?}"

## shellcheck disable=SC2164

push_uri="https://$GITHUB_ACCESS_TOKEN@github.com/$GITHUB_REPO"

# Redirect to /dev/null to avoid secret leakage
printf 'git push %s staging:develop\n' "$GITHUB_REPO"
git push "$push_uri" staging:develop