
# set output file
set term postscript fontscale 1.6
set output "fifo_depth.ps"

# define graph
set key off
set grid

set xrange [3:17]
set xlabel "FIFO Depth"

set ylabel "Average Stall Rate"

# plot
plot "fifo_depth.dat" using 1:(1-$2) with lines linewidth 4 linetype 1,\
     "fifo_depth.dat" using 1:(1-$2):($3/16) with yerrorbars linewidth 3 linetype 1 pointtype 6 pointsize 1
     