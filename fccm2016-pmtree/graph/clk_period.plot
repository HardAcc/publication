
# set output file
set term postscript fontscale 1.6
set output "clk_period.ps"

# define graph
set key off
set grid

set xrange [0:35]
#set xrange [1:35]
#set logscale x 2
set xlabel "Number of Ports"

set yrange [2:12]
set ylabel "Minimal Clock Period (ns)"

set style line 1 linewidth 4 linetype 1 pointtype 5 pointsize 2

set key off

# plot
plot "clk_period.dat" using 1:2 with linespoints ls 1
     