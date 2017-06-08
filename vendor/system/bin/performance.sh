#!/system/bin/sh

umask 022

#yexh1 LOGFILE="/data/local/log/aplog/dmesglog"
if [ $(getprop persist.sys.lenovo.log.path) = INVALID ]; then
        exit
fi

if [ -z "$1" ]; then
	LOGDIR=$(getprop persist.sys.lenovo.log.path)
else 
	LOGDIR=$1  
fi

LOGFILE=$LOGDIR"/performance" #yexh1 
/system/bin/logcat -r8096 -b performance -n 32 -v time -f $LOGFILE 
