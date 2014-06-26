#!/bin/bash

BASEDIR=$(dirname $0)

# following will be failed like com.xxx.xxx.apk
#FILENAME=`echo "$1" | cut -d'.' -f1`

# to remove .apk file extension
APK=$1
FILENAME="${APK##.apk}"
FILENAME=${FILENAME%.*}
rm -f  $FILENAME-signed.apk > /dev/null 2>&1

TMPFILE="/tmp/~zipalign.apk"
# jarsigner -verbose -keystore ~/crack.keystore -signedjar $1_signed.apk $1 crack.keystore
java -jar $BASEDIR/signapk.jar $BASEDIR/platform.x509.pem $BASEDIR/platform.pk8 $1 $TMPFILE
zipalign -v 4 $TMPFILE $FILENAME-signed.apk

rm -f $TMPFILE
