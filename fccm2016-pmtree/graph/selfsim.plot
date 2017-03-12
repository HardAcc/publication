
# set output file
set term postscript enhanced fontscale 1.6
set output "selfsim.ps"
set size square

# define graph
set key right bottom box
set grid

set xrange [0:1]
set xlabel "h"

set ylabel "Average Output Data Rate (number/cycle)"

set style line 1 linewidth 4 linetype 1 pointtype 5 pointsize 1
set style line 2 linewidth 4 linetype 2 pointtype 6 pointsize 1

# plot
plot "selfsim.dat" using 1:2 with linespoints ls 1 title "optimized",\
     "selfsim.dat" using 1:4 with linespoints ls 2 title "original"
     