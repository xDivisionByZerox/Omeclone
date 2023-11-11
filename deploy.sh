#!/bin/sh
set -e
vendor/bin/phpunit

git add .
(git commit -m "Depoly app to server") || true
(git push) || true

git push origin master

git checkout master