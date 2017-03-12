
# set output file
set term postscript fontscale 1.6
set output "pmt_area_port.ps"

# define graph
set grid

set xrange [0:38]
set xlabel "Number of Ports"

set yrange [0:145000]
set ylabel "Utilization of FPGA Resource"

set style line 1 linewidth 4 linetype 1 pointtype 5 pointsize 1.5
set style line 2 linewidth 4 linetype 2 pointtype 6 pointsize 1.5
set style line 3 linewidth 4 linetype 3 pointtype 7 pointsize 1.5

set key left top box 

# plot
plot "pmt_area_port.dat" using 1:2 with linespoints ls 1 title "LUT", \
     "pmt_area_port.dat" using 1:3 with linespoints ls 2 title "Register", \
     "pmt_area_port.dat" using 1:4 with linespoints ls 3 title "SRL"
     