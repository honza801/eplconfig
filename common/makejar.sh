#!/bin/bash

ROOT=$(dirname $(readlink -f $0))
echo "Root dir: $ROOT"


REVISION=`svn info $ROOT | grep Revision | cut -d" " -f2`
sed -e  "s/SvnRevision.*$/SvnRevision = \"$REVISION\";/" $ROOT/../src/cz/rexcontrols/epl/editor/EplConfiguratorInfo.java -i

PROGNAME="eplconfigurator-$REVISION.jar"
BIN="$ROOT/bin"
MAINCLASS="cz/rexcontrols/epl/editor/gui/EplConfiguratorFrame"

echo "Preparing $BIN directory..."
cd ..
[ ! -d $BIN ] && mkdir $BIN 
echo "Compiling..."
javac -d $BIN `find $ROOT/../src/ -name \*.java`

echo "Creating ${PROGNAME}."
cd $BIN
jar -cfe $ROOT/../${PROGNAME} ${MAINCLASS} cz org

echo "$ROOT/../${PROGNAME} done."

