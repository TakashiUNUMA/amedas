#!/bin/sh

infiles=$*

# path to data directory
DDIR=../../data

# day
DDAY="2012/08/14"

# time
DTIME="00:30"

# outfile
OUTFILE="test.dat"


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

awk -F, '$3=="'${DDAY}'" && $4=="'${DTIME}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > ${OUTFILE}
awk -F, '$3=="'${DDAY}'" && $4=="'${DTIME}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> ${OUTFILE}
awk -F, '$3=="'${DDAY}'" && $4=="'${DTIME}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> ${OUTFILE}
