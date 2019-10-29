#!/usr/bin/env sh

set -o errexit

JAVA_TOOL_OPTIONS=-Djava.io.tmpdir=${XDG_CACHE_HOME}/tmp/
export JAVA_TOOL_OPTIONS
TMPDIR=${XDG_CACHE_HOME}/tmp/
export TMPDIR

exec env /app/idea-IC/bin/idea.sh "$@"
