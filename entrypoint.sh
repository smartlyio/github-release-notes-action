#!/bin/sh -l

IFS='/' read -r username repository <<EOF
$GITHUB_REPOSITORY
EOF

GREN_GITHUB_TOKEN=$GITHUB_TOKEN gren release --username=$username --repo=$repository
