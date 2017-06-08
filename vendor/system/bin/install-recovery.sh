#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 24539136 b86dc1f045ae8c319d11d4181f57482d8706d7ae 21278720 c62ee6a4404fcd5d498117ccfb2c11ba158d0d43
fi

if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:24539136:b86dc1f045ae8c319d11d4181f57482d8706d7ae; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:21278720:c62ee6a4404fcd5d498117ccfb2c11ba158d0d43 EMMC:/dev/block/bootdevice/by-name/recovery b86dc1f045ae8c319d11d4181f57482d8706d7ae 24539136 c62ee6a4404fcd5d498117ccfb2c11ba158d0d43:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
