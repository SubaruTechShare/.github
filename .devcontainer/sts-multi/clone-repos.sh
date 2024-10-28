#!/usr/bin/env bash

clone_repo() {
  local repo_name=$1
  gh repo clone SubaruTechShare/$repo_name /workspaces/$repo_name
}

clone_repo sts-client
clone_repo sts-backend
clone_repo techshare-backend

$(cd /workspaces/sts-backend && aqua install)

# aws cli and aws-sso-cli prerequisites

mkdir $HOME/.aws-sso $HOME/.aws
touch $HOME/.aws-sso/store.json
