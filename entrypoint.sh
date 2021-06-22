#!/usr/bin/env sh

export JAVA_HOME=/app/jdk
export MAVEN_HOME=/usr/lib/sdk/openjdk11/maven
export ANT_HOME=/usr/lib/sdk/openjdk11/ant
export GRADLE_HOME=/usr/lib/sdk/openjdk11/gradle
export PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin:$ANT_HOME/bin:$GRADLE_HOME/bin
export TMPDIR=${XDG_RUNTIME_DIR}/app/${FLATPAK_ID}

export IDEA_JDK=/app/jdk
export IDEA_VM_OPTIONS=/app/bin/idea64.vmoptions

# https://plugins.jetbrains.com/plugin/10233-discord-integration
for i in {0..9}; do
    test -S $XDG_RUNTIME_DIR/discord-ipc-$i || ln -sf {app/com.discordapp.Discord,$XDG_RUNTIME_DIR}/discord-ipc-$i;
done

exec env /app/idea-IC/bin/idea.sh "$@"
