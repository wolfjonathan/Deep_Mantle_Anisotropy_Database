#!/bin/bash

# This script uses gmt-4 for plotting. (xyz2grd & grdimage)
# This script uses (ps2pdf) convert post-script file to pdf file.

# We will plot All.yes.grd.txt as an example.
# This file has 3 columns: longitude/latitude/mark(0 or 1)
# Grid increment is 0.5 deg in both directions.

rm -f tomography.eps
gmt gmtset FONT_ANNOT_PRIMARY=18p
gmt gmtset MAP_GRID_PEN_PRIMARY=0.3p
gmt gmtset MAP_GRID_PEN_SECONDARY=0.3p
gmt gmtset MAP_FRAME_WIDTH=1p

gmt psbasemap -R0/360/-90/90 -P -JN-70/17.5 -Bf180 -K   >> tomography.eps
gmt pscoast -R -J -Dc -A10000 -W.5,gray -Ggray95 -O -K  >> tomography.eps

gmt psxy LLVP_grid/3model_2016_8.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> tomography.eps
gmt psxy LLVP_grid/3model_2016_7.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> tomography.eps
gmt psxy LLVP_grid/3model_2016_6.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> tomography.eps
gmt psxy LLVP_grid/3model_2016_5.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> tomography.eps
gmt psxy LLVP_grid/3model_2016_4.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> tomography.eps
gmt psxy LLVP_grid/3model_2016_3.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> tomography.eps
gmt psxy LLVP_grid/3model_2016_2.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> tomography.eps
gmt psxy LLVP_grid/3model_2016_1.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> tomography.eps

gmt psxy LLVP_contours/3model_2016_8.txt   -R -J -O -W1,black -K >> tomography.eps
gmt psxy LLVP_contours/3model_2016_7.txt   -R -J -O -W1,black -K >> tomography.eps
gmt psxy LLVP_contours/3model_2016_6.txt   -R -J -O -W1,black -K >> tomography.eps
gmt psxy LLVP_contours/3model_2016_5.txt   -R -J -O -W1,black -K >> tomography.eps
gmt psxy LLVP_contours/3model_2016_4.txt   -R -J -O -W1,black -K >> tomography.eps
gmt psxy LLVP_contours/3model_2016_3.txt   -R -J -O -W1,black -K >> tomography.eps
gmt psxy LLVP_contours/3model_2016_2.txt   -R -J -O -W1,black -K >> tomography.eps
gmt psxy LLVP_contours/3model_2016_1.txt   -R -J -O -W1,black -K >> tomography.eps

gmt psxy tomography_grid/Suzuki_etal_2022.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> tomography.eps
gmt psxy tomography_grid/Kawai_and_Geller_2010.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> tomography.eps
