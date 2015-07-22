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
v10=`strings /dev/block/mmcblk0p12 | grep -e "-V10.-" | head -1`
v20=`strings /dev/block/mmcblk0p12 | grep -e "-V20.-" | head -1`
setprop gsm.version.baseband ${v10}${v20}

# Set essential configs
roserialno=`getprop ro.serialno`
romanufacturer=`getprop ro.product.manufacturer`
romodel=`getprop ro.product.model`
echo $roserialno > /sys/class/android_usb/android0/iSerial
echo $romanufacturer > /sys/class/android_usb/android0/iManufacturer
echo $romodel > /sys/class/android_usb/android0/iProduct
echo $romanufacturer > /sys/class/android_usb/android0/f_rndis/manufacturer

# Set DualSim based on baseband
e425set=`getprop gsm.version.baseband | head -1 | grep -o "E425"`
e430set=`getprop gsm.version.baseband | head -1 | grep -o "E430"`
e431set=`getprop gsm.version.baseband | head -1 | grep -o "E431"`
e435set=`getprop gsm.version.baseband | head -1 | grep -o "E435"`
setprop persist.baseband.device ${e425set}${e430set}${e431set}${e435set}
