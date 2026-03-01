BIOS_NAME=$(strings *ASUS*.CAP | grep CAP | tail -1)

mv *ASUS*.CAP ./"$BIOS_NAME"
