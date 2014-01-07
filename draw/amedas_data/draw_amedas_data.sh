#!/bin/sh

# Specify input file
infile=test.dat

# Specify output file
psfile=amedas_data.ps

# Setting for projection, drawing area
XYINT="a1f0.5"
PRJ="m1:7500000"
RANGE="134/137/33.0/36.0"

# Setting for range of value
VMIN=0
VMAX=5
VINT=1
#VMIN=20
#VMAX=30
#VINT=1

#
# execute from here --->
#
# GMT setting
gmtdefaults -D > .gmtdefaults4
gmtset HEADER_FONT_SIZE        12p
gmtset HEADER_OFFSET         -0.1c
gmtset LABEL_FONT_SIZE         12p
gmtset ANOT_FONT_SIZE           8p
gmtset ANNOT_OFFSET_PRIMARY  0.20c
gmtset PLOT_DEGREE_FORMAT    ddd:mm:ssF
gmtset BASEMAP_TYPE          plain
gmtset TICK_LENGTH           0.10c
gmtset FRAME_PEN             0.50p
gmtset GRID_PEN              0.30p
gmtset TICK_PEN              0.50p
gmtset MEASURE_UNIT             cm
gmtset PAPER_MEDIA          letter
gmtset VECTOR_SHAPE              0
#gmtset VECTOR_SHAPE              1
#gmtset VECTOR_SHAPE              2


# Useful option
gmtsta='-P -K'
gmtcon='-P -K -O'
gmtend='-P -O'

# makecpt
makecpt -Cseis -T${VMIN}/${VMAX}/${VINT} -I | sed -e "s/F\t0\t0\t0/F\t255\t0\t0/g" -e "s/B\t255\t255\t255/B\t0\t0\t255/g" > cpalet.cpt

# psbasemap
psbasemap -J${PRJ} -R${RANGE} -B${XYINT}:"":/${XYINT}:"":SWne:."AMeDAS Data": -X4.0 -Y3.0 ${gmtsta} > ${psfile}

# psxy for wind vector
awk '$6!="-999."{print $1,$2,$6,$5}' ${infile} | psxy -J -R -SV0.005/0.2/0.1n0.2 -G0,0,0 ${gmtcon} >> ${psfile}

# psxy for rainfall
awk '{print $1,$2,$3}' ${infile} | psxy -J -R -Ccpalet.cpt -Sc0.15 ${gmtcon} >> ${psfile}

# psxy for temperture
#awk '{print $1,$2,$4}' ${infile} | psxy -J -R -Ccpalet.cpt -Sc0.15 ${gmtcon} >> ${psfile}


# pscoast
pscoast -J -R -W1 -A100 -Dh ${gmtcon} >> ${psfile}

# psscale
psscale -Ccpalet.cpt -D5.0/2.5/2.5/0.225 -E0.5 -Ba5/:"[mm]": ${gmtcon} >> ${psfile}

# labels (pstext)
# x     y   size angle font place comment
cat << EOF | pstext -R1/10/1/10 -Jx1.0 -N ${gmtend} >> ${psfile}
-0.5   0.0    1   0.0   0    ML    .
-0.5   7.5    1   0.0   0    ML    .
 7.0   0.0    1   0.0   0    ML    .
 7.0   7.5    1   0.0   0    ML    .
EOF
# end of procedure <---


# output PNG file from PostScript
ps2raster -Tg -A ${psfile}

# output PDF file from PostScript
ps2raster -Tf -A ${psfile}

# output EPS file from PostScript
ps2raster -Te -A ${psfile}


#rm -f ${psfile}
rm -f .gmt*
rm -f cpalet.cpt
