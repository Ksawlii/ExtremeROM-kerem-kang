echo "Enable Vulkan"
SET_PROP "vendor" "ro.hwui.use_vulkan" "true"
SET_PROP "vendor" "debug.hwui.use_hint_manager" "true"

# For some reason we are missing 2 permissions here: android.hardware.security.model.compatible and android.software.controls
# First one is related to encryption and second one to SmartThings Device Control
echo "Patching vendor permissions"
sed -i '$d' "$WORK_DIR/vendor/etc/permissions/handheld_core_hardware.xml"
echo >> "$WORK_DIR/vendor/etc/permissions/handheld_core_hardware.xml"
echo "    <!-- Indicate support for the Android security model per the CDD. -->" >> "$WORK_DIR/vendor/etc/permissions/handheld_core_hardware.xml"
echo "    <feature name=\"android.hardware.security.model.compatible\"/>" >> "$WORK_DIR/vendor/etc/permissions/handheld_core_hardware.xml"
echo >> "$WORK_DIR/vendor/etc/permissions/handheld_core_hardware.xml"
echo "    <!--  Feature to specify if the device supports controls.  -->" >> "$WORK_DIR/vendor/etc/permissions/handheld_core_hardware.xml"
echo "    <feature name=\"android.software.controls\"/>" >> "$WORK_DIR/vendor/etc/permissions/handheld_core_hardware.xml"
echo "</permissions>" >> "$WORK_DIR/vendor/etc/permissions/handheld_core_hardware.xml"
