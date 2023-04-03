#!/bin/bash

if [[ ! -d app ]]; then
	git clone https://$GITHUB_USER:$GITHUB_TOKEN@github.com/$GITHUB_REPO app
fi;
cd app
if [[ ! -f "_build/prod/rel/$APP_NAME/bin/$APP_NAME" ]]; then
	mix setup
	mix deps.compile
	mix assets.deploy
	mix release
fi;

_build/prod/rel/$APP_NAME/bin/$APP_NAME start
