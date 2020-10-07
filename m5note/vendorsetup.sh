for var in eng user userdebug; do
  add_lunch_combo aosp_m5note-$var
done

#Ship with root access
export WITH_SU=true
export LC_ALL=C
