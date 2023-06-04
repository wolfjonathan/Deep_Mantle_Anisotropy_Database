#!/bin/bash

# This script uses gmt-4 for plotting. (xyz2grd & grdimage)
# This script uses (ps2pdf) convert post-script file to pdf file.

# We will plot All.yes.grd.txt as an example.
# This file has 3 columns: longitude/latitude/mark(0 or 1)
# Grid increment is 0.5 deg in both directions.

rm -f SKS-SKKS.eps
gmt gmtset FONT_ANNOT_PRIMARY=18p
gmt gmtset MAP_GRID_PEN_PRIMARY=0.3p
gmt gmtset MAP_GRID_PEN_SECONDARY=0.3p
gmt gmtset MAP_FRAME_WIDTH=1p

gmt psbasemap -R0/360/-90/90 -P -JN-70/17.5 -Bf180 -K  >> SKS-SKKS.eps
gmt pscoast -R -J -Dc -A10000 -W.5,gray -Ggray95 -O -K >> SKS-SKKS.eps

gmt psxy LLVP_grid/3model_2016_8.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> SKS-SKKS.eps
gmt psxy LLVP_grid/3model_2016_7.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> SKS-SKKS.eps
gmt psxy LLVP_grid/3model_2016_6.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> SKS-SKKS.eps
gmt psxy LLVP_grid/3model_2016_5.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> SKS-SKKS.eps
gmt psxy LLVP_grid/3model_2016_4.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> SKS-SKKS.eps
gmt psxy LLVP_grid/3model_2016_3.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> SKS-SKKS.eps
gmt psxy LLVP_grid/3model_2016_2.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> SKS-SKKS.eps
gmt psxy LLVP_grid/3model_2016_1.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> SKS-SKKS.eps

gmt psxy LLVP_contours/3model_2016_8.txt   -R -J -O -W1,black -K >> SKS-SKKS.eps
gmt psxy LLVP_contours/3model_2016_7.txt   -R -J -O -W1,black -K >> SKS-SKKS.eps
gmt psxy LLVP_contours/3model_2016_6.txt   -R -J -O -W1,black -K >> SKS-SKKS.eps
gmt psxy LLVP_contours/3model_2016_5.txt   -R -J -O -W1,black -K >> SKS-SKKS.eps
gmt psxy LLVP_contours/3model_2016_4.txt   -R -J -O -W1,black -K >> SKS-SKKS.eps
gmt psxy LLVP_contours/3model_2016_3.txt   -R -J -O -W1,black -K >> SKS-SKKS.eps
gmt psxy LLVP_contours/3model_2016_2.txt   -R -J -O -W1,black -K >> SKS-SKKS.eps
gmt psxy LLVP_contours/3model_2016_1.txt   -R -J -O -W1,black -K >> SKS-SKKS.eps

gmt psxy SKS-SKKS_grid/Asplet_etal_2019_2023.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Creasy_etal_2017_2.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Creasy_etal_2021_2.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Creasy_etal_2021.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Deng_etal_2017_2.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Deng_etal_2017.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Ford_etal_2015.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Grund_and_Ritter_2019_2.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Grund_and_Ritter_2019.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/He_and_Long_2011.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Long_2009.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Long_and_Lynner_2015.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Lutz_etal_2020.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Lynner_and_Long_2012.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Lynner_and_Long_2014.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Reiss_etal_2019_2.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Reiss_etal_2019.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Vanacore_and_Liu_2011.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Wang_and_Wen_2007_2.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Wang_and_Wen_2007.txt    -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Wolf_and_Long_2022.txt   -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Wolf_etal_2019.txt       -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Wolf_etal_2023b_2.txt    -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Wolf_etal_2023b.txt      -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Wolf_etal_inprep.txt     -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
gmt psxy SKS-SKKS_grid/Roy_etal_2014.txt     -Sc.05  -Gfirebrick2 -R -J -O -K >> SKS-SKKS.eps
