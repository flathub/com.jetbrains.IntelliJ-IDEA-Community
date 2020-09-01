#!/usr/bin/env sh

set -o errexit

IDEA_JDK="/app/idea-IC/jre64"
export IDEA_JDK
TMPDIR="${XDG_RUNTIME_DIR}/app/${FLATPAK_ID}"
export TMPDIR

exec env /app/idea-IC/bin/idea.sh "$@"
