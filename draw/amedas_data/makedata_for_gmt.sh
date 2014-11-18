#!/bin/sh

infiles=$*

# path to data directory
DDIR=../../data

# date
DDATE="2013/08/25"

# time
DTIME1="09:00"

DTIME2="09:10"
DTIME3="09:20"
DTIME4="09:30"
DTIME5="09:40"
DTIME6="09:50"
DTIME7="10:00"
DTIME8="10:10"
DTIME9="10:20"
DTIME10="10:30"
DTIME11="10:40"
DTIME12="10:50"
DTIME13="11:00"
DTIME14="11:10"
DTIME15="11:20"
DTIME16="11:30"
DTIME17="11:40"
DTIME18="11:50"
DTIME19="12:00"
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

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME1}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 0900.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME1}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 0900.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME1}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 0900.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME2}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 0910.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME2}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 0910.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME2}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 0910.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME3}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 0920.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME3}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 0920.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME3}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 0920.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME4}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 0930.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME4}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 0930.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME4}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 0930.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME5}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 0940.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME5}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 0940.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME5}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 0940.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME6}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 0950.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME6}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 0950.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME6}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 0950.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME7}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 1000.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME7}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1000.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME7}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1000.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME8}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 1010.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME8}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1010.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME8}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1010.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME9}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 1020.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME9}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1020.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME9}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1020.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME10}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 1030.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME10}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1030.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME10}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1030.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME11}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 1040.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME11}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1040.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME11}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1040.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME12}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 1050.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME12}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1050.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME12}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1050.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME13}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 1100.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME13}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1100.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME13}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1100.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME14}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 1110.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME14}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1110.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME14}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1110.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME15}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 1120.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME15}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1120.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME15}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1120.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME16}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 1130.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME16}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1130.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME16}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1130.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME17}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 1140.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME17}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1140.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME17}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1140.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME18}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 1150.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME18}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1150.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME18}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1150.dat

awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME19}'" && NF==11 {print $1,$2,$5,$6,$7,$8}' ${DDIR}/??/*/*.csv > 1200.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME19}'" && NF==13 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1200.dat
awk -F, '$3=="'${DDATE}'" && $4=="'${DTIME19}'" && NF==14 {print $1,$2,$7,$8,$10,$11}' ${DDIR}/??/*/*.csv >> 1200.dat

