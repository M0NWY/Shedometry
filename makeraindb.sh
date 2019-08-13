#!/bin/bash

rrdtool create rain.rrd --step 300 \
DS:Rain:GAUGE:1000:0:1000 \
DS:Wet:GAUGE:1000:0:1024 \
RRA:AVERAGE:0.5:1:3200 \
RRA:AVERAGE:0.5:6:3200 \
RRA:AVERAGE:0.5:36:3200 \
RRA:AVERAGE:0.5:144:3200 \
RRA:AVERAGE:0.5:1008:3200 \
RRA:AVERAGE:0.5:4320:3200 \
RRA:MIN:0.5:1:3200 \
RRA:MIN:0.5:6:3200 \
RRA:MIN:0.5:36:3200 \
RRA:MIN:0.5:144:3200 \
RRA:MIN:0.5:1008:3200 \
RRA:MIN:0.5:4320:3200 \
RRA:MAX:0.5:1:3200 \
RRA:MAX:0.5:6:3200 \
RRA:MAX:0.5:36:3200 \
RRA:MAX:0.5:144:3200 \
RRA:MAX:0.5:1008:3200 \
RRA:MAX:0.5:4320:3200