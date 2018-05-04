#!/bin/sh

TOP=$PWD

<<EOF
STUDIO_HOME=$TOP/tools/studio
JAVA_HOME=$STUDIO_HOME/jre
GRADLE_HOME=$TOP/tools/gradle-4.5.1

export JAVA_HOME=$JAVA_HOME
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$STUDIO_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
EOF

TOP=/home/work/5.android/as
export ANDROID_HOME=$TOP/sdk
export STUDIO_HOME=$TOP/studio
export JAVA_HOME=$TOP/studio/jre
export JRE_HOME=$TOP/studio/jre/jre
export GRADLE_HOME=$TOP/studio/gradle/gradle-4.1

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$STUDIO_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$JAVA_HOME/bin:$PATH
#export PATH=$JRE_HOME/bin:$PATH
#export CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib
