#!/bin/bash
cp=$(find -name "org.eclipse.equinox.launcher_*.jar" | sort | tail -1);
hostname=$(hostname -I)
echo "if ${hostname} is not reachable from outside then change your hostname manually in this script"
javaOpts="-Dorg.osgi.service.http.port=8888 -Dnet.slp.interfaces=${hostname} -Decf.generic.server.hostname=${hostname}"
opts="-consolelog -console -initialize -noExit"
debugOpts="-agentlib:jdwp=transport=dt_socket,address=4444,server=y,suspend=y"
if [ -z "$1" ]; then
        java ${javaOpts} -cp ${cp} org.eclipse.equinox.launcher.Main  ${opts}
elif [ $1 = "-debug" ]; then
        echo "java ${javaOpts}  ${debugOpts} -cp ${cp} org.eclipse.equinox.launcher.Main ${opts}"
        java ${javaOpts}  ${debugOpts} -cp ${cp} org.eclipse.equinox.launcher.Main ${opts}
else
    echo "invalid option: ${1}"
    echo
    echo "valid options : -debug"
    echo
fi
