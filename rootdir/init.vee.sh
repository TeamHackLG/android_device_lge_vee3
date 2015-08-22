#!/system/bin/sh
# Copyright (c) 2011-2012, The Linux Foundation. All rights reserved.
# Copyright (c) 2014, TeamHackLG. All rights reserved.
# Copyright (c) 2015, TeamVee. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of The Linux Foundation nor
#       the names of its contributors may be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

# No path is set up at this point so we have to do it here.
PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

# Set baseband based on modem
basebandcheck=`getprop gsm.version.baseband | grep -o -e "V10" -e "V20"`
case "$basebandcheck" in
	"") setprop gsm.version.baseband `strings /dev/block/mmcblk0p12 | grep -e "-V10.-" -e "-V20.-" | head -1` ;;
esac

# Get device based on baseband
deviceset=`getprop gsm.version.baseband | grep -o -e "E410" -e "E411" -e "E415" -e "E420" -e "E425" -e "E430" -e "E431" -e "E435" -e "P710" -e "P712" -e "P713" -e "P714" -e "P715" -e "P716" | head -1`

# ReMount /system to Read-Write
mount -o rw,remount /system

# Set Variant in build.prop
case "$deviceset" in
	"E410") busybox sed -i '/ro.product.model=L3 II/c\ro.product.model=E410 (L1 II Single)' system/build.prop ;;
	"E411") busybox sed -i '/ro.product.model=L3 II/c\ro.product.model=E411 (L1 II Single)' system/build.prop ;;
	"E415") busybox sed -i '/ro.product.model=L3 II/c\ro.product.model=E415 (L1 II Dual)' system/build.prop ;;
	"E420") busybox sed -i '/ro.product.model=L3 II/c\ro.product.model=E420 (L1 II Dual)' system/build.prop ;;
	"E425") busybox sed -i '/ro.product.model=L3 II/c\ro.product.model=E425 (L3 II Single)' system/build.prop ;;
	"E430") busybox sed -i '/ro.product.model=L3 II/c\ro.product.model=E430 (L3 II Single)' system/build.prop ;;
	"E431") busybox sed -i '/ro.product.model=L3 II/c\ro.product.model=E431 (L3 II Single)' system/build.prop ;;
	"E435") busybox sed -i '/ro.product.model=L3 II/c\ro.product.model=E435 (L3 II Dual)' system/build.prop ;;
	"P710") busybox sed -i '/ro.product.model=L7 II/c\ro.product.model=P710 (L7 II Single)' system/build.prop ;;
	"P712") busybox sed -i '/ro.product.model=L7 II/c\ro.product.model=P712 (L7 II Single)' system/build.prop ;;
	"P713") busybox sed -i '/ro.product.model=L7 II/c\ro.product.model=P713 (L7 II Single)' system/build.prop ;;
	"P714") busybox sed -i '/ro.product.model=L7 II/c\ro.product.model=P714 (L7 II Single)' system/build.prop ;;
	"P715") busybox sed -i '/ro.product.model=L7 II/c\ro.product.model=P715 (L7 II Dual)' system/build.prop ;;
	"P716") busybox sed -i '/ro.product.model=L7 II/c\ro.product.model=P716 (L7 II Dual)' system/build.prop ;;
esac

# Enable DualSim
case "$deviceset" in
	"E415" | "E420" | "E435" | "P715" | "P716")
	disabledualsim=`getprop persist.disable.dualsim`
	case "$disabledualsim" in
		"false" | "")
		setprop persist.radio.multisim.config dsds
		setprop persist.multisim.config dsds
		setprop ro.multi.rild true
		stop ril-daemon
		start ril-daemon
		start ril-daemon1
	esac
esac

# Change KeyLayouts
case "$deviceset" in
	"E435")
	disablekeyhack=`getprop persist.disable.keyhack`
	case "$disablekeyhack" in
		"false" | "")
		busybox sed -i '/key 139   MENU              VIRTUAL/c\key 139   HOME              VIRTUAL' system/usr/keylayout/touch_mcs8000.kl
		busybox sed -i '/key 172   HOME              VIRTUAL/c\key 172   MENU              VIRTUAL' system/usr/keylayout/touch_mcs8000.kl
		;;
		"true")
		busybox sed -i '/key 139   HOME              VIRTUAL/c\key 139   MENU              VIRTUAL' system/usr/keylayout/touch_mcs8000.kl
		busybox sed -i '/key 172   MENU              VIRTUAL/c\key 172   HOME              VIRTUAL' system/usr/keylayout/touch_mcs8000.kl
		;;
	esac
	;;
esac

# ReMount /system to Read-Only
mount -o ro,remount /system

# V20
case "$deviceset" in
	"P710" | "P712" | "P713" | "P714" | "P715" | "P716")
	case "$basebandcheck" in
		"V10")
		setprop gsm.version.baseband ""
	esac
esac

# Set essential configs
echo `getprop ro.serialno` > /sys/class/android_usb/android0/iSerial
echo `getprop ro.product.manufacturer` > /sys/class/android_usb/android0/iManufacturer
echo `getprop ro.product.manufacturer` > /sys/class/android_usb/android0/f_rndis/manufacturer
echo `getprop ro.product.model` > /sys/class/android_usb/android0/iProduct