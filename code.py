#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Author: Lars Dittert <lars.dittert@de.ibm.com>
# This file is part of the washYourHands project.
#

import time
from adafruit_circuitplayground import cp

BLUE = (0, 0, 255)
RED = (90, 0, 0)
GREEN = (0, 90, 0)
CLEAR = (0, 0, 0)

while True:
    if not cp.switch:
        cp.pixels.fill(CLEAR)
        continue
    
    cp.pixels.brightness = 0.5
    cp.pixels.fill(BLUE)
    print(cp.sound_level)

    if cp.sound_level > 3000:
        timeout = time.time() + 20
        while True:
            if time.time() > timeout:
                break

            for singlePixel in range(0,10):
                cp.pixels.fill(CLEAR)
                cp.pixels[singlePixel] = RED
                time.sleep(0.05)
        cp.pixels.fill(GREEN)
        time.sleep(2)