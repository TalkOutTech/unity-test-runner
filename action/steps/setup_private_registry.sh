#!/usr/bin/env bash

echo "Configuring access to private registry ${PRIVATE_PACKAGE_REPOSITORY_URL}"

echo "Writing ${HOME}/.upmconfig.toml"
echo "[npmAuth.\"${PRIVATE_PACKAGE_REPOSITORY_URL}\"]" >> "${HOME}/.upmconfig.toml"
echo "token = \"${PRIVATE_PACKAGE_REPOSITORY_TOKEN}\"" >> "${HOME}/.upmconfig.toml"
echo "alwaysAuth = true" >> "${HOME}/.upmconfig.toml"

echo "Writing ${HOME}/.npmrc"
echo "iregistry=${PRIVATE_PACKAGE_REPOSITORY_URL}" >> "${HOME}/.npmrc"
echo "//npm.pkg.github.com/:_authToken=${PRIVATE_PACKAGE_REPOSITORY_TOKEN}" >> "${HOME}/.npmrc"
