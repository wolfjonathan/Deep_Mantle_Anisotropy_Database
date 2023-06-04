#!/bin/bash

# This script uses gmt-4 for plotting. (xyz2grd & grdimage)
# This script uses (ps2pdf) convert post-script file to pdf file.

# We will plot All.yes.grd.txt as an example.
# This file has 3 columns: longitude/latitude/mark(0 or 1)
# Grid increment is 0.5 deg in both directions.

rm -f S_ScS_Sdiff_diffSVSH.eps
gmt gmtset FONT_ANNOT_PRIMARY=18p
gmt gmtset MAP_GRID_PEN_PRIMARY=0.3p
gmt gmtset MAP_GRID_PEN_SECONDARY=0.3p
gmt gmtset MAP_FRAME_WIDTH=1p

gmt psbasemap -R0/360/-90/90 -P -JN-70/17.5 -Bf180 -K   >> S_ScS_Sdiff_diffSVSH.eps
gmt pscoast -R -J -Dc -A10000 -W.5,gray -Ggray95 -O -K  >> S_ScS_Sdiff_diffSVSH.eps

gmt psxy LLVP_grid/3model_2016_8.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy LLVP_grid/3model_2016_7.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy LLVP_grid/3model_2016_6.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy LLVP_grid/3model_2016_5.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy LLVP_grid/3model_2016_4.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy LLVP_grid/3model_2016_3.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy LLVP_grid/3model_2016_2.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy LLVP_grid/3model_2016_1.txt.txt   -Sc.05  -Grosybrown1 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps

gmt psxy LLVP_contours/3model_2016_8.txt   -R -J -O -W1,black -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy LLVP_contours/3model_2016_7.txt   -R -J -O -W1,black -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy LLVP_contours/3model_2016_6.txt   -R -J -O -W1,black -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy LLVP_contours/3model_2016_5.txt   -R -J -O -W1,black -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy LLVP_contours/3model_2016_4.txt   -R -J -O -W1,black -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy LLVP_contours/3model_2016_3.txt   -R -J -O -W1,black -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy LLVP_contours/3model_2016_2.txt   -R -J -O -W1,black -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy LLVP_contours/3model_2016_1.txt   -R -J -O -W1,black -K >> S_ScS_Sdiff_diffSVSH.eps

gmt psxy S_ScS_Sdiff_diffSVSH_grid/Ding_and_Helmberger_1997.txt -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Ford_etal_2006.txt           -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Fouch_etal_2001_2.txt        -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Fouch_etal_2001.txt          -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Garnero_and_Lay_1997.txt     -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Garnero_etal_2004b.txt       -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Kendall_and_Silver_1996.txt  -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Lay_and_Young_1991.txt       -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Matzel_etal_1996.txt         -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Pulliam_and_Sen_1998.txt     -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Ritsema_2000.txt             -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Ritsema_etal_1998.txt        -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Rokosky_etal_2004_2006.txt   -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Russel_etal_1998_1999.txt    -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Thomas_and_kendall_2002.txt  -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Thomas_etal_2007.txt         -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Usui_etal_2008.txt           -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Vinnik_etal_1995_1998.txt    -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Wysession_etal_1999.txt      -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
gmt psxy S_ScS_Sdiff_diffSVSH_grid/Yang_etal_2008.txt      -Sc.05  -Gfirebrick2 -R -J -O -K >> S_ScS_Sdiff_diffSVSH.eps
