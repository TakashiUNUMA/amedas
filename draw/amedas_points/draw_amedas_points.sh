#!/bin/sh

# Specify input file
infile=station_list_with_location.txt

# Specify output file
psfile=amedas_sites.ps

# Settiong for projection, drawing area
XYINT="a1f0.5"
PRJ="m1:7500000"
RANGE="134/137/33.0/36.0"


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
gmtset TICK_LENGTH           0.20c
gmtset FRAME_PEN             0.50p
gmtset GRID_PEN              0.30p
gmtset TICK_PEN              0.50p
gmtset MEASURE_UNIT             cm
gmtset PAPER_MEDIA          letter

# Useful option
gmtsta='-P -K'
gmtcon='-P -K -O'
gmtend='-P -O'

# psxy
awk 'NR>1{print $5,$6}' ${infile} | psxy -J${PRJ} -R${RANGE} -Sx0.15 -W1 -X4.0 -Y3.0 ${gmtsta} > ${psfile}

# pscoast
pscoast -J -R -W1 -A100 -Dh ${gmtcon} >> ${psfile}

# psbasemap
psbasemap -J -R -B${XYINT}:"":/${XYINT}:"":SWne:."AMeDAS Points": ${gmtcon} >> ${psfile}

# psscale
#psscale -C${CPALET} -D8.5/0.75/2.5/0.225h -Ba1000/:"[m]": ${gmtcon} >> ${psfile}

# labels (pstext)
# x     y   size angle font place comment
cat << EOF | pstext -R1/10/1/10 -Jx1.0 -N ${gmtend} >> ${psfile}
-0.5   0.0    1   0.0   0    ML    .
-0.5   7.5    1   0.0   0    ML    .
 6.5   0.0    1   0.0   0    ML    .
 6.5   7.5    1   0.0   0    ML    .
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
