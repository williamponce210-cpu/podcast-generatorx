#!/bin/bash 

echo '======='

git confing --global user.name '${GITHUB_ACTOR}'
git confing --global user.email '${INPUT_EMAIL}'
it confing --global --add safe.directory /github/workspace

python /urs/bin/feed.py
git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo '======='
