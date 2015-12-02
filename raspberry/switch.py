# -*- coding: utf-8 -*-
import sys
import threading
import datetime
import locale
import RPi.GPIO as GPIO

def on():
    print "on"
    GPIO.output(17,GPIO.LOW)
    t=threading.Timer(0.1,off)
    t.start()

def off():
    print "off"
    GPIO.output(17,GPIO.HIGH)
    t=threading.Timer(0.1,on)
    t.start()

GPIO.setmode(GPIO.BCM)
GPIO.setup(17, GPIO.OUT)
t=threading.Timer(1.0,on)
t.start()
