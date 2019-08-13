#!/bin/bash

rrdtool create rain.rrd --step 300 \
DS:Rain:GAUGE:1000:0:1000 \
DS:Wet:GAUGE:1000:0:1024 \
RRA:MAX:0.5:1:3200 \
