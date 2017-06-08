#!/system/bin/sh

PARA_ALL=`getprop sys.jcommand_para`
#PARA_ALL=$1

if [ "$PARA_ALL" == "" ]; then
    echo "PARA_ALL is null" >>/data/jcommand_log.txt
else
    setprop sys.jcommand_para ""
fi

#PARA_M=MODE
#PARA_1=PA1
#PARA_2=PA2
#echo "all is :$PARA_ALL" >>/data/jcommand_log.txt

PARA_TEMP=${PARA_ALL%%\]*}
#echo "temp is :${PARA_TEMP}"
PARA_M=${PARA_TEMP#*\[}
#echo $PARA_M

PARA_TEMP=${PARA_ALL%%\]*}
#echo "temp is :$PARA_TEMP"
PARA_M=${PARA_TEMP#\[*}
#echo "mode : $PARA_M"

PARA_TEMP=${PARA_ALL#*\]}
PARA_TEMP_1=${PARA_TEMP%%\]*}
#echo "temp is :$PARA_TEMP"
PARA_1=${PARA_TEMP_1#\[*}
#echo "para 1 is :$PARA_1"

PARA_TEMP=${PARA_ALL##*\[}
#echo "temp is : $PARA_TEMP"
PARA_2=${PARA_TEMP%*\]}
#echo "para 2 : $PARA_2"


##  excute the setmtu from QC platform
##  para_1 :ifname ; para_2: MTU ; 
##  para_1 and para_2 shouldnt be null
function SetMtu() {
    echo " we would excute: ip link set dev $PARA_1 mtu $PARA_2"
    ip link set dev $PARA_1 mtu $PARA_2
}

##  excute the Wifi-Wapi-Cert from QC platform
##  para_1: NULL ; para_2 : NULL
##  para_1/ para_2 is not null, but we can  ignore it
function CopyCertfilefromSD() {
    echo " we would excute: CopyCertfilefromSD"
    DEFAULT_CERT_FILE_PATH=/data/wapi_certificate
    DEFAULT_SD_PATH=/sdcard
##    mkdir ${DEFAULT_CERT_FILE_PATH}
##   chmod 777 ${DEFAULT_CERT_FILE_PATH}

if [ -d "$DEFAULT_CERT_FILE_PATH" ];then
    cp ${DEFAULT_SD_PATH}/*.cer  ${DEFAULT_CERT_FILE_PATH}
    chmod 777  ${DEFAULT_CERT_FILE_PATH}/*.cer
else
echo "the /data/wapi_certificate does not exist"
exit 0
fi
}

function getModemLevel(){
    echo " we would  get modem level"
    setprop persist.sys.level `cat /sys/bus/msm_subsys/devices/subsys2/restart_level`
}

function restartModem(){
    echo "we would exceutl: echo $PARA_1 > /sys/kernel/debug/msm_subsys/modem"
    echo $PARA_1 > /d/msm_subsys/modem
}

function restartLevel(){
    echo "we would exceutl: echo $PARA_1 > /sys/bus/msm_subsys/devices/subsys1/restart_level"
    echo $PARA_1 > /sys/bus/msm_subsys/devices/subsys2/restart_level
}

#m base file of external storage. 
function ClearDatabase() {
    echo " clear database"
    rm /data/data/com.android.providers.media/databases/external.db
			    rm /data/data/com.android.providers.media/databases/external.db-shm
    rm /data/data/com.android.providers.media/databases/external.db-wal
}
 set GPIO config
##  para_1 : para ; para_2: sys_file
##  para_1 and para_2 shouldnt be null
function SetGPIO() {
    echo " we would excute: write $PARA_1 to $PARA_2"
    echo $PARA_1 > $PARA_2
}


#====================================
#main

if [ "$PARA_M" == "SETMTU" ]; then
    SetMtu
elif [ "$PARA_M" == "CPCER" ]; then
    CopyCertfilefromSD
elif [ "$PARA_M" == "SETGPIO" ]; then
    SetGPIO
elif [ "$PARA_M" == "RESTARTLEVEL" ]; then
    restartLevel  
elif [ "$PARA_M" == "RESTARTMODEM" ]; then
    restartModem
elif [ "$PARA_M" == "MODEMLEVEL" ]; then
    getModemLevel    
fi
