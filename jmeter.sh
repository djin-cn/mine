#!/bin/sh
jmeter_download='http://mirrors.tuna.tsinghua.edu.cn/apache//jmeter/binaries/apache-jmeter-5.1.1.tgz'

export JMETER_HOME=./jmeter_bin
export CLASSPATH=$JMETER_HOME/lib/ext/ApacheJMeter_core.jar:$JMETER_HOME/lib/jorphan.jar:$JMETER_HOME/lib/logkit-2.0.jar:$CLASSPATH
export PATH=$JMETER_HOME/bin:$PATH:$HOME/bin

#printf "JMETER_HOME: $JMETER_HOME\n"

if [ ! -d "$JMETER_HOME" ]; then
    mkdir $JMETER_HOME
    curl -o jmeter.tgz $jmeter_download
    tar -zxvf jmeter.tgz
    mv apache-jmeter-*/* $JMETER_HOME/
    rm -rf apache-jmeter-*
    rm -f jmeter.tgz
fi

command=${1:--h}

case $command in
    '-h') jmeter -h
    ;;
    *) jmeter -n -t $command -l $command.jtl
    ;;
esac
