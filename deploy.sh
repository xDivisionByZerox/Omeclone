#!/bin/sh
set -e

git add .
(git commit -m "Depoly app to server") || true
(git push) || true

git push origin main

git checkout main