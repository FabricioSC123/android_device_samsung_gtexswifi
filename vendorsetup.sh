# Apply patches first
sh device/samsung/gtexswifi/patches/apply.sh;

# Prepare for lunch
for i in eng user userdebug; do
add_lunch_combo dot_gtexswifi-${i};
done
rm -rf system/bt; rm -rf packages/apps/Bluetooth; rm -rf packages/inputmethods/LatinIME
git clone https://github.com/lineage-gtexslte/system_bt.git system/bt; git clone https://github.com/jedld/packages_apps_Bluetooth.git packages/apps/Bluetooth
git clone https://github.com/LineageOS/android_external_stlport.git -b cm-14.1 external/stlport; git clone https://github.com/LineageOS/android_hardware_samsung.git -b cm-14.1 hardware/samsung
git clone https://github.com/underscoremone/android_kernel_samsung_gtexswifi.git kernel/samung/gtexswifi; git clone https://github.com/underscoremone/proprietary_vendor_samsung_gtexswifi.git vendor/samsung/gtexswifi
git clone https://github.com/underscoremone/android_hardware_sprd.git hardware/sprd; git clone https://github.com/LineageOS/android_packages_apps_SamsungServiceMode.git packages/apps/SamsungServiceMode 
git clone https://github.com/underscoremone/android_prebuilts_gcc_linux-x86_arm_arm-eabi.git prebuilts/gcc/linux-x86/arm/arm-eabi-7.5; git clone https://github.com/underscoremone/android_packages_inputmethods_LatinIME.git packages/inputmethods/LatinIME
git clone https://github.com/TeamWin/android_bootable_recovery.git -b android-9.0; git clone https://github.com/LineageOS/android_external_busybox.git external/busybox
