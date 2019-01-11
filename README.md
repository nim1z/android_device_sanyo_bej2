# android_device_sanyo_bej2
android device configuration for 40TL04(BEJ2)  
after build, please rename /system/lib/egl/libGLES_android.so to libGLES_imx51.so  
not working:  
wifi  
camera  
audio  
home button(not match keylayout)  
sd partition(mmcblk1p1)  
how to use:  
git clone https://gist.github.com/nim1z/d0e0b6c34994469ea54486592837b767.git  
lunch aosp_bej2-eng
