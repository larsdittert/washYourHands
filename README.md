# washYourHands

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

This program helps to get a better understanding of the time that should be spent washing hands thoroughly.

## Instructions

1. Clap your hands when you are ready to wash your hands and start the timer
2. The LEDs pulse for 20 seconds, indicating that the hands should be soaped
3. As soon as the 20 seconds have elapsed, the LEDs light up green and the hands can be flushed
4. When the LEDs are blue again, the process can be repeated

## Used hardware

For the implementation of this project a microcontroller from Adafruit was used, which among other things contains a sound sensor and LEDs. This is the [Adafruit Circuit Playground Bluefruit](https://www.adafruit.com/product/4333).

The firmware used is [CircuitPython 5.0.0](https://circuitpython.org/board/circuitplayground_bluefruit/)

The [Circuit Playground Enclosure](https://www.adafruit.com/product/3915) and a [Lithium Polymer Battery](https://www.adafruit.com/product/4237) were also used.

## Bureaucracy

You could find the file `copyCode.sh` in the directory `lib`, which copies the code to your Circuit Playground.

In the same directory you will find the `copyProject.sh` file which copies the code and the required libs to your Circuit Playground.
