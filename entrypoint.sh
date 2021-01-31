#!/usr/bin/env sh

export ANT_HOME=/usr/lib/sdk/openjdk11/ant
export GRADLE_HOME=/usr/lib/sdk/openjdk11/gradle
export IDEA_JDK=/app/jdk
export JAVA_HOME=/app/jdk
export MAVEN_HOME=/usr/lib/sdk/openjdk11/maven
export TMPDIR="${XDG_RUNTIME_DIR}/app/${FLATPAK_ID}"
export PATH="${PATH}:${ANT_HOME}/bin:${GRADLE_HOME}/bin:${JAVA_HOME}/bin:${MAVEN_HOME}/bin"

exec /app/idea-IC/bin/idea.sh "$@"
