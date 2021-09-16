#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/by-name/recovery:67108864:373116eec0b0b7709042fb4f49fe95d152d68c0a; then
  applypatch  EMMC:/dev/block/by-name/boot:67108864:eda3933288a4bc5444bd41a34c4268db6ec32cc3 EMMC:/dev/block/by-name/recovery 373116eec0b0b7709042fb4f49fe95d152d68c0a 67108864 eda3933288a4bc5444bd41a34c4268db6ec32cc3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
