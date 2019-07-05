#!/usr/bin/env sh

# abort on errors
set -e

# build
NODE_ENV=development npm run build

# navigate into the build output directory
cd .vuepress/dist

# if you are deploying to a custom domain
echo 'docs.iotex.io' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
 git push  git@github.com:feigu1984/iotex-docs.git master:gh-pages

cd -
