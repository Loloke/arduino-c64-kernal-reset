avrdude -c usbasp -p atmega328p -P usb -b 115200 -e -u -U lock:w:0x3f:m -U efuse:w:0x05:m -U hfuse:w:0xDA:m -U lfuse:w:0xFF:m
avrdude -c usbasp -p atmega328p -P usb -b 115200 -e -u -U flash:w:ATmegaBOOT_168_atmega328.hex
