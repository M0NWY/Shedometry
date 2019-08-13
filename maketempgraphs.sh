#!/bin/bash

# 10 Min graph
# No point - only 10 data points to graph.

# 60 min - 1h
rrdtool graph /var/www/shedometry/graphs/temp-60min.png \
--start end-1h --width 700 --end now --slope-mode \
--vertical-label Celsius \
--alt-autoscale-max \
DEF:t1=/home/simon/shedometry/temp.rrd:FLOOR:AVERAGE \
DEF:t2=/home/simon/shedometry/temp.rrd:CEILING1:AVERAGE \
DEF:t3=/home/simon/shedometry/temp.rrd:CEILING2:AVERAGE \
DEF:t4=/home/simon/shedometry/temp.rrd:CEILING3:AVERAGE \
DEF:t5=/home/simon/shedometry/temp.rrd:DESK:AVERAGE \
DEF:t6=/home/simon/shedometry/temp.rrd:EXTERNAL:AVERAGE \
LINE1:t1#0000FF:"Floor" \
LINE1:t2#AA00FF:"Ceiling by door" \
LINE1:t3#FF00FF:"Ceiling middle" \
LINE1:t4#00FF00:"Ceiling desk" \
LINE1:t5#FF0000:"Desk" \
LINE1:t6#AAAAAA:"Outside"


# 6h
rrdtool graph /var/www/shedometry/graphs/temp-6hour.png \
--start end-6h --width 700 --end now --slope-mode \
--vertical-label Celsius \
--alt-autoscale-max \
DEF:t1=/home/simon/shedometry/temp.rrd:FLOOR:AVERAGE \
DEF:t2=/home/simon/shedometry/temp.rrd:CEILING1:AVERAGE \
DEF:t3=/home/simon/shedometry/temp.rrd:CEILING2:AVERAGE \
DEF:t4=/home/simon/shedometry/temp.rrd:CEILING3:AVERAGE \
DEF:t5=/home/simon/shedometry/temp.rrd:DESK:AVERAGE \
DEF:t6=/home/simon/shedometry/temp.rrd:EXTERNAL:AVERAGE \
LINE1:t1#0000FF:"Floor" \
LINE1:t2#AA00FF:"Ceiling by door" \
LINE1:t3#FF00FF:"Ceiling middle" \
LINE1:t4#00FF00:"Ceiling desk" \
LINE1:t5#FF0000:"Desk" \
LINE1:t6#AAAAAA:"Outside"




# 1 day
rrdtool graph /var/www/shedometry/graphs/temp-day.png \
--start end-1d --width 700 --end now --slope-mode \
--vertical-label Celsius \
--alt-autoscale-max \
DEF:t1=/home/simon/shedometry/temp.rrd:FLOOR:AVERAGE \
DEF:t2=/home/simon/shedometry/temp.rrd:CEILING1:AVERAGE \
DEF:t3=/home/simon/shedometry/temp.rrd:CEILING2:AVERAGE \
DEF:t4=/home/simon/shedometry/temp.rrd:CEILING3:AVERAGE \
DEF:t5=/home/simon/shedometry/temp.rrd:DESK:AVERAGE \
DEF:t6=/home/simon/shedometry/temp.rrd:EXTERNAL:AVERAGE \
LINE1:t1#0000FF:"Floor" \
LINE1:t2#AA00FF:"Ceiling by door" \
LINE1:t3#FF00FF:"Ceiling middle" \
LINE1:t4#00FF00:"Ceiling desk" \
LINE1:t5#FF0000:"Desk" \
LINE1:t6#AAAAAA:"Outside" \


# 1 week
rrdtool graph /var/www/shedometry/graphs/temp-week.png \
--start end-7d --width 700 --end now --slope-mode \
--vertical-label Celsius \
--alt-autoscale-max \
DEF:t1=/home/simon/shedometry/temp.rrd:FLOOR:AVERAGE \
DEF:t2=/home/simon/shedometry/temp.rrd:CEILING1:AVERAGE \
DEF:t3=/home/simon/shedometry/temp.rrd:CEILING2:AVERAGE \
DEF:t4=/home/simon/shedometry/temp.rrd:CEILING3:AVERAGE \
DEF:t5=/home/simon/shedometry/temp.rrd:DESK:AVERAGE \
DEF:t6=/home/simon/shedometry/temp.rrd:EXTERNAL:AVERAGE \
LINE1:t1#0000FF:"Floor" \
LINE1:t2#AA00FF:"Ceiling by door" \
LINE1:t3#FF00FF:"Ceiling middle" \
LINE1:t4#00FF00:"Ceiling desk" \
LINE1:t5#FF0000:"Desk" \
LINE1:t6#AAAAAA:"Outside" \


# 1 month
rrdtool graph /var/www/shedometry/graphs/temp-month.png \
--start end-30d --width 700 --end now --slope-mode \
--vertical-label Celsius \
--alt-autoscale-max \
DEF:t1=/home/simon/shedometry/temp.rrd:FLOOR:AVERAGE \
DEF:t2=/home/simon/shedometry/temp.rrd:CEILING1:AVERAGE \
DEF:t3=/home/simon/shedometry/temp.rrd:CEILING2:AVERAGE \
DEF:t4=/home/simon/shedometry/temp.rrd:CEILING3:AVERAGE \
DEF:t5=/home/simon/shedometry/temp.rrd:DESK:AVERAGE \
DEF:t6=/home/simon/shedometry/temp.rrd:EXTERNAL:AVERAGE \
LINE1:t1#0000FF:"Floor" \
LINE1:t2#AA00FF:"Ceiling by door" \
LINE1:t3#FF00FF:"Ceiling middle" \
LINE1:t4#00FF00:"Ceiling desk" \
LINE1:t5#FF0000:"Desk" \
LINE1:t6#AAAAAA:"Outside" \


# 1 year
rrdtool graph /var/www/shedometry/graphs/temp-year.png \
--start end-1y --width 700 --end now --slope-mode \
--vertical-label Celsius \
--alt-autoscale-max \
DEF:t1=/home/simon/shedometry/temp.rrd:FLOOR:AVERAGE \
DEF:t2=/home/simon/shedometry/temp.rrd:CEILING1:AVERAGE \
DEF:t3=/home/simon/shedometry/temp.rrd:CEILING2:AVERAGE \
DEF:t4=/home/simon/shedometry/temp.rrd:CEILING3:AVERAGE \
DEF:t5=/home/simon/shedometry/temp.rrd:DESK:AVERAGE \
DEF:t6=/home/simon/shedometry/temp.rrd:EXTERNAL:AVERAGE \
LINE1:t1#0000FF:"Floor" \
LINE1:t2#AA00FF:"Ceiling by door" \
LINE1:t3#FF00FF:"Ceiling middle" \
LINE1:t4#00FF00:"Ceiling desk" \
LINE1:t5#FF0000:"Desk" \
LINE1:t6#AAAAAA:"Outside" \



# 2 year
rrdtool graph /var/www/shedometry/graphs/temp-2year.png \
--start end-2y --width 700 --end now --slope-mode \
--vertical-label Celsius \
--alt-autoscale-max \
DEF:t1=/home/simon/shedometry/temp.rrd:FLOOR:AVERAGE \
DEF:t2=/home/simon/shedometry/temp.rrd:CEILING1:AVERAGE \
DEF:t3=/home/simon/shedometry/temp.rrd:CEILING2:AVERAGE \
DEF:t4=/home/simon/shedometry/temp.rrd:CEILING3:AVERAGE \
DEF:t5=/home/simon/shedometry/temp.rrd:DESK:AVERAGE \
DEF:t6=/home/simon/shedometry/temp.rrd:EXTERNAL:AVERAGE \
LINE1:t1#0000FF:"Floor" \
LINE1:t2#AA00FF:"Ceiling by door" \
LINE1:t3#FF00FF:"Ceiling middle" \
LINE1:t4#00FF00:"Ceiling desk" \
LINE1:t5#FF0000:"Desk" \
LINE1:t6#AAAAAA:"Outside" \



# 10 year
rrdtool graph /var/www/shedometry/graphs/temp-10year.png \
--start end-10y --width 700 --end now --slope-mode \
--vertical-label Celsius \
--alt-autoscale-max \
DEF:t1=/home/simon/shedometry/temp.rrd:FLOOR:AVERAGE \
DEF:t2=/home/simon/shedometry/temp.rrd:CEILING1:AVERAGE \
DEF:t3=/home/simon/shedometry/temp.rrd:CEILING2:AVERAGE \
DEF:t4=/home/simon/shedometry/temp.rrd:CEILING3:AVERAGE \
DEF:t5=/home/simon/shedometry/temp.rrd:DESK:AVERAGE \
DEF:t6=/home/simon/shedometry/temp.rrd:EXTERNAL:AVERAGE \
LINE1:t1#0000FF:"Floor" \
LINE1:t2#AA00FF:"Ceiling by door" \
LINE1:t3#FF00FF:"Ceiling middle" \
LINE1:t4#00FF00:"Ceiling desk" \
LINE1:t5#FF0000:"Desk" \
LINE1:t6#AAAAAA:"Outside" \

