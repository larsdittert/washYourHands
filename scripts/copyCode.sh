CODE_FILE=code.py
CIRCUITPY_DIR=/Volumes/CIRCUITPY/

if test -d "$CIRCUITPY_DIR"
    then
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