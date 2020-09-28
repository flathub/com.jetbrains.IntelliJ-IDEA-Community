#!/usr/bin/env sh

export JAVA_HOME=/app/jdk
export JAVA_TOOL_OPTIONS=-Djava.io.tmpdir=${XDG_CACHE_HOME}/tmp
export MAVEN_HOME=/app/idea-IC/plugins/maven/lib/maven3
export M2_REPO=/var/data/.m2/repository
export PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin
export IDEA_JDK=/app/jdk
export TMPDIR=${XDG_RUNTIME_DIR}/app/${FLATPAK_ID}
export IDEA_PROPERTIES=/app/bin/idea.properties

exec env /app/idea-IC/bin/idea.sh "$@"
