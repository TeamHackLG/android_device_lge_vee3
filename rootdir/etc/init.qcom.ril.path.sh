#!/system/bin/sh
#
# Enable ril-daemon1 on DualSim
#
PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH
dsds=`getprop persist.radio.multisim.config`
if [ "$dsds" = "dsds" ]; then
    setprop ro.multi.rild true
    stop ril-daemon
    start ril-daemon
    start ril-daemon1
else
    stop ril-daemon
    start ril-daemon
fi
