#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:9046016:3fbfd229ddfa4b088b8366d335c8c9e66aa8b6d9; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p9:8611840:8cc6729beecd580c36b87eb251b7bbf5288f4a40 EMMC:/dev/block/mmcblk0p10 3fbfd229ddfa4b088b8366d335c8c9e66aa8b6d9 9046016 8cc6729beecd580c36b87eb251b7bbf5288f4a40:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
