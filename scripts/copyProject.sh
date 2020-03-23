CODE_FILE=code.py
CIRCUITPY_DIR=/Volumes/CIRCUITPY/
CIRCUITPY_LIB_DIR=/Volumes/CIRCUITPY/lib

if test -d "$CIRCUITPY_DIR"
    then
        if ! test -d "$CIRCUITPY_LIB_DIR"
            then
                cp -r lib "$CIRCUITPY_LIB_DIR"
                echo "Created lib directory"
            else 
                rm -r "$CIRCUITPY_LIB_DIR"
                cp -r lib "$CIRCUITPY_LIB_DIR"
                echo "Transferred necessary libs"
        fi
        if test -f "$CODE_FILE"
            then
                cp code.py /Volumes/CIRCUITPY/code.py
                echo "Copied succesfully"
            else
                echo "code.py file is not available"
        fi
    else
        echo "Adafruit Circuit Playground Bluefruit not found"
fi