
# set output file
set term postscript fontscale 1.6
set output "pmt_area_fifo.ps"

# define graph
set grid

set xrange [3:17]
set xlabel "FIFO Depth"

set yrange [0:55000]
set ylabel "Utilization of FPGA Resource"

set style line 1 linewidth 4 linetype 1 pointtype 5 pointsize 2
set style line 2 linewidth 4 linetype 2 pointtype 6 pointsize 2
set style line 3 linewidth 4 linetype 3 pointtype 7 pointsize 2

set key center right box 

# plot
plot "pmt_area_fifo.dat" using 1:2 with linespoints ls 1 title "LUT", \
     "pmt_area_fifo.dat" using 1:3 with linespoints ls 2 title "Register", \
     "pmt_area_fifo.dat" using 1:4 with linespoints ls 3 title "SRL"
     