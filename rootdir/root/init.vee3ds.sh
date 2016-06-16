#!/system/bin/sh
# Copyright 2016 The Android Open Source Project
# Copyright 2016 TeamHacklG
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Start ril-daemon1 for dualsim
if [ $(getprop persist.radio.multisim.config) -eq dsds ]
then
	start ril-daemon1
fi

# Set secondary things
setprop ro.build.description "$(getprop ro.build.product)-$(getprop ro.build.type) $(getprop ro.build.version.release) $(getprop ro.build.id) $(getprop ro.build.version.incremental) $(getprop ro.build.tags)"
setprop ro.build.fingerprint "$(getprop ro.product.manufacturer)/$(getprop ro.build.product)/$(getprop ro.build.product):$(getprop ro.build.version.release)/$(getprop ro.build.id):$(getprop ro.build.type)/$(getprop ro.build.tags)"
