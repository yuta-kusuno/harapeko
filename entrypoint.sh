#!/bin/bash
#setコマンド https://www.atmarkit.co.jp/ait/articles/1805/10/news023.html
set -e

#Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

#Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"