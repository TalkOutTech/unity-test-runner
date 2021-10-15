#!/usr/bin/env bash

echo "Configuring access to private registry ${PRIVATE_PACKAGE_REPOSITORY_URL}"

echo "[npmAuth.\"${PRIVATE_PACKAGE_REPOSITORY_URL}\"]" >> "~/.upmconfig.toml"
echo "token = \"${PRIVATE_PACKAGE_REPOSITORY_TOKEN}\"" >> "~/.upmconfig.toml"
echo "alwaysAuth = true" >> "~/.upmconfig.toml"

echo "iregistry=${PRIVATE_PACKAGE_REPOSITORY_URL}" >> "~/.npmrc"
echo "//npm.pkg.github.com/:_authToken=${PRIVATE_PACKAGE_REPOSITORY_TOKEN}" >> "~/.npmrc"
