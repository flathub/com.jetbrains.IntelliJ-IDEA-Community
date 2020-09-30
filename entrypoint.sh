#!/usr/bin/env sh

export JAVA_HOME=/app/jdk
export JAVA_TOOL_OPTIONS=-Djava.io.tmpdir=${XDG_CACHE_HOME}/tmp
export MAVEN_HOME=/usr/lib/sdk/openjdk11/maven
export ANT_HOME=/usr/lib/sdk/openjdk11/ant
export GRADLE_HOME=/usr/lib/sdk/openjdk11/gradle
export PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin:$ANT_HOME/bin:$GRADLE_HOME/bin
export IDEA_JDK=/app/jdk
export TMPDIR=${XDG_RUNTIME_DIR}/app/${FLATPAK_ID}

exec env /app/idea-IC/bin/idea.sh "$@"
