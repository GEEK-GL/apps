#!/usr/bin/env sh

# abort on errors
set -e

# build
WS_URL='wss://testnet.geekcash.org' yarn build

# navigate into the build output directory
cd packages/apps/build

# if you are deploying to a custom domain
echo 'app.geek.gl' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:GEEK-GL/apps.git master:gh-pages

cd -