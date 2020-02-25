import RPi.GPIO as GPIO
import time
import numpy as np

GPIO.setmode(GPIO.BOARD)
GPIO.setup(12, GPIO.IN)
GPIO.setup(15, GPIO.IN)
GPIO.setup(16, GPIO.IN)
GPIO.setup(35, GPIO.IN)

no = (GPIO.input(35)<<3) + (GPIO.input(16)<<2) + (GPIO.input(15)<<1) + (GPIO.input(12)) 

print (no)

GPIO.cleanup()


