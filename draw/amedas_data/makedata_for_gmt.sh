#!/bin/sh

infiles=$*

# path to data directory
DDIR=../../data

# time
DTIME="00:30"

#
# format:
#
#  $1: longitute
#  $2: latitude
#  $3: yyyy/mm/dd (date)
#  $4: hh:nn (time [JST])
#  $5: rainfall [mm]
#  $6: temperature [degrees centigrade]
#  $7: wind speed [m/s]
#  $8: wind direction [dgree] (from north)
#
awk -F, '$4=="'${DTIME}'" {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv

