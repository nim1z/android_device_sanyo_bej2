# android_device_sanyo_bej2
Android device configuration for 40TL04(BEJ2)
for Android-4.4.4_r2  
After boot, Please run the following command.    
`adb shell ln -s /system/lib/egl/libGLES_android.so /system/lib/egl/libGLES_imx51.so`  
  
not working:  
wifi  
camera  
audio  
external sd auto mount(mmcblk1p1 to /sdcard/extsd?)  
some maintainers,and device😣  
  
how to use:  
git clone https://gist.github.com/nim1z/d0e0b6c34994469ea54486592837b767.git  
lunch aosp_BEJ2-eng
