c" boot.f - Finding top of eeprom, " .cstr findEETOP ' fstop 2+ alignl L! forget _serafc c" Top of eeprom at: " .cstr fstop . cr
c" boot.f - DONE PropForth Loaded~h0D~h0DLoading usrboot.f~h0D~h0D" .cstr hA state andnC!
...