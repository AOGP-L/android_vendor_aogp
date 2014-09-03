#!/sbin/sh
# 
# /system/addon.d/98-temasek.sh
# During a CM11 upgrade, this script backs up the following,
# /system is formatted and reinstalled, then the file is restored.
#
# Add BetterBatteryStatus XDA Edition
#

. /tmp/backuptool.functions

list_files() {
cat <<EOF
priv-app/com.asksven.betterbatterystats_xdaedition.apk
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/"$FILE"
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/"$FILE" "$R"
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
