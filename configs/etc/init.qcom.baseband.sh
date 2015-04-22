#!/system/bin/sh

# No path is set up at this point so we have to do it here.
PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

v10=`strings /dev/block/mmcblk0p12 | grep -e "-V10.-"| head -1`
v20=`strings /dev/block/mmcblk0p12 | grep -e "-V20.-"| head -1`
setprop gsm.version.baseband ${v10}${v20}
