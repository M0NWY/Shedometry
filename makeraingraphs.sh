#!/bin/bash


# 60 min - 1h
rrdtool graph /var/www/shedometry/graphs/rain-60min.png \
--start end-60m --width 700 --end now  \
--vertical-label Ticks \
--alt-autoscale-max \
DEF:Rain=/home/simon/shedometry/rain.rrd:Rain:MAX \
DEF:Wet=/home/simon/shedometry/rain.rrd:Wet:MAX \
AREA:Rain#0000FF:"Rain" \
LINE1:Wet#000000:"Wet" 

# 6h
rrdtool graph /var/www/shedometry/graphs/rain-6hour.png \
--start end-6h --width 700 --end now --slope-mode \
--vertical-label Ticks \
--alt-autoscale-max \
DEF:Rain=/home/simon/shedometry/rain.rrd:Rain:MAX \
DEF:Wet=/home/simon/shedometry/rain.rrd:Wet:MAX \
AREA:Rain#0000FF:"Rain" \
LINE1:Wet#000000:"Wet"

# 1 day
rrdtool graph /var/www/shedometry/graphs/rain-day.png \
--start end-1d --width 700 --end now --slope-mode \
--vertical-label Ticks \
--alt-autoscale-max \
DEF:Rain=/home/simon/shedometry/rain.rrd:Rain:MAX \
DEF:Wet=/home/simon/shedometry/rain.rrd:Wet:MAX \
AREA:Rain#0000FF:"Rain" \
LINE1:Wet#000000:"Wet"


# 1 week
rrdtool graph /var/www/shedometry/graphs/rain-week.png \
--start end-7d --width 700 --end now --slope-mode \
--vertical-label Ticks \
--alt-autoscale-max \
DEF:Rain=/home/simon/shedometry/rain.rrd:Rain:MAX \
DEF:Wet=/home/simon/shedometry/rain.rrd:Wet:MAX \
AREA:Rain#0000FF:"Rain" \
LINE1:Wet#000000:"Wet"


# 1 month
rrdtool graph /var/www/shedometry/graphs/rain-month.png \
--start end-30d --width 700 --end now --slope-mode \
--vertical-label Ticks \
--alt-autoscale-max \
DEF:Rain=/home/simon/shedometry/rain.rrd:Rain:MAX \
DEF:Wet=/home/simon/shedometry/rain.rrd:Wet:MAX \
AREA:Rain#0000FF:"Rain" \
LINE1:Wet#000000:"Wet"


# 1 year
rrdtool graph /var/www/shedometry/graphs/rain-year.png \
--start end-1y --width 700 --end now --slope-mode \
--vertical-label Ticks \
--alt-autoscale-max \
DEF:Rain=/home/simon/shedometry/rain.rrd:Rain:MAX \
DEF:Wet=/home/simon/shedometry/rain.rrd:Wet:MAX \
AREA:Rain#0000FF:"Rain" \
LINE1:Wet#000000:"Wet"


# 2 year
rrdtool graph /var/www/shedometry/graphs/rain-2year.png \
--start end-2y --width 700 --end now --slope-mode \
--vertical-label Ticks \
--alt-autoscale-max \
DEF:Rain=/home/simon/shedometry/rain.rrd:Rain:MAX \
DEF:Wet=/home/simon/shedometry/rain.rrd:Wet:MAX \
AREA:Rain#0000FF:"Rain" \
LINE1:Wet#000000:"Wet"


# 10 year
rrdtool graph /var/www/shedometry/graphs/rain-10year.png \
--start end-10y --width 700 --end now --slope-mode \
--vertical-label Ticks \
--alt-autoscale-max \
DEF:Rain=/home/simon/shedometry/rain.rrd:Rain:MAX \
DEF:Wet=/home/simon/shedometry/rain.rrd:Wet:MAX \
AREA:Rain#0000FF:"Rain" \
LINE1:Wet#000000:"Wet"


