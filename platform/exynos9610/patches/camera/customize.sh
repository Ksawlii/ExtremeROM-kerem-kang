echo "- Fix portrait mode"
# Remove blobs from source firmware
SOURCE_MODEL=$(echo "$SOURCE_FIRMWARE" | cut -d'/' -f1,2 | tr '/' '_')
BLOBS_LIST="$FW_DIR/$SOURCE_MODEL/system/system/etc/public.libraries-arcsoft.txt"

DELETE_FROM_WORK_DIR "system" "system/etc/public.libraries-arcsoft.txt"
while IFS= read -r blob; do
    [ -n "$blob" ] && DELETE_FROM_WORK_DIR "system" "system/lib64/$blob"
done < "$BLOBS_LIST"

# Add blobs from target firmware
TARGET_MODEL=$(echo "$TARGET_FIRMWARE" | cut -d'/' -f1,2 | tr '/' '_')
BLOBS_LIST="$FW_DIR/$TARGET_MODEL/system/system/etc/public.libraries-arcsoft.txt"

ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/etc/public.libraries-arcsoft.txt" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib/libface_landmark.arcsoft.so" 0 0 644 "u:object_r:system_lib_file:s0"
while IFS= read -r blob; do
    [ -n "$blob" ] && ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/$blob" 0 0 644 "u:object_r:system_lib_file:s0"
done < "$BLOBS_LIST"


echo "- Fix changing wallpapers"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libImageTagger.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
