#!/bin/sh

#ROOT=$PWD
#ROOT=$(cd "$(dirname "$0")"; pwd) 
#echo PWD=$PWD $0 $1 $2
ROOT=/home/work/5.android/cmd
echo ROOT=$ROOT

export ANDROID_HOME=$ROOT/sdk
export JAVA_HOME=$ROOT/tools/jdk1.8.0_172
export GRADLE_HOME=$ROOT/tools/gradle-4.6

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
#export PATH=$ANDROID_HOME/platform-tools:$PATH
echo PATH=$PATH
#export PATH=$ANDROID_HOME/platform-tools:$PATH
#export PATH=$ANDROID_HOME/tools/bin:$PATH
#export PATH=$STUDIO_HOME/bin:$PATH
#export PATH=$JRE_HOME/bin:$PATH
#export CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib
