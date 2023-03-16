# arduino-c64-kernal-reset
C64 Kernal switcher and switchless reset implementation on 250469 board revision, with Arduino Pro Micro (Atmega328P,5V,16MHz)

## bootloader
On the C64 short board (eg. 250469), the cold boot reset is way shorter (2-300ms), than on the older boards (2000+ms). When you install an Arduino kernal switcher, the c64 boots faster, than arduino (which is waiting in the bootloader for serial upload). This causes problems on some devices (eg: Kung Fu Flash). So, i modified the original atmega328p bootloader to start the sketch automatically without delay. If you want to update the firmware with serial, you must press the reset button on the Arduino.
Installation run the flash.bat (either on windows/linux/macos). For flashing, you need some AVR programmer (i used usbasp), and avrdude installed.

## arduino sketch
I modified the original code, and inverted the logic of the power led.
