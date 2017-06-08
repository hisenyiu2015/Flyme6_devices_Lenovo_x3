#!/system/bin/sh

#Copyright (c) 2015 Lenovo Co. Ltd	
#Authors: yexh1@lenovo.com

umask 022


#LOGDIR=$(getprop persist.sys.lenovo.log.path)

CFGFILE=$(getprop persist.sys.lenovo.log.qxdmcfg)

LOGDISK=$(getprop persist.sys.lenovo.log.disk)
LOGFOLDER=$(getprop persist.sys.lenovo.log.folder)

LOGDIR=$LOGDISK"/log/"$LOGFOLDER

chmod 777 $CFGFILE

#in L, we delay the sdcard mount in xiamens' project. 
#it will have abnormal if save log direct to /data/media/0, and need to save to sdcar
#so wait for boot completed, and the sdcard will be ready
while [ 1 ]
do
    if [ $(getprop sys.boot_completed) = 1 ]; then
		break;
	fi
    sleep 2	
done

if [ ! -f "/dev/diag" ]; then
    #in Android 5.0, if have dev/diag will cause CTS fail VIBEUIDEVL-329
    ln -s /dev/diag_back /dev/diag
fi


#if [[ $CFGFILE = *"$DATAMEDIA"* ]];then
#CFGNAME=`echo $CFGFILE | /sbin/busybox awk '{print substr($0, 14)}'`  &&  CFGNAME="$STORAGE""$CFGNAME"
#fi

#kill the diag_mdlog process at first
/system/bin/diag_mdlog -k
# -s set the single log size in MB 
/system/bin/diag_mdlog -s 512 -n 20 -f $CFGFILE -o $LOGDIR
