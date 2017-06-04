#!/bin/bash

jarBaseName=$1
tempSmaliDir=$2

moveDirs=("android/app" "android/media")

if [ "$jarBaseName" = "framework" ];then
    echo ">>> in custom_jar $jarBaseName"
    for dir_name in "${!moveDirs[@]}"
    do
        mv -v $tempSmaliDir/smali/${moveDirs[$dir_name]} $tempSmaliDir/smali_classes2/${moveDirs[$dir_name]}
    done
fi

if [ "$jarBaseName" = "services" ];then
    echo ">>> in custom_jar $jarBaseName"
    rm -rf $tempSmaliDir/smali/com/android/server/power/ShutdownThread*.smali
	cp -rf ../base/services.jar.out/smali/com/android/server/power/ShutdownThread*.smali $tempSmaliDir/smali/com/android/server/power/
fi
