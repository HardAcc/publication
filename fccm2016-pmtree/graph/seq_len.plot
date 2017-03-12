
# set output file
set term postscript fontscale 1.6
set output "seq_len.ps"

# define graph
set key off
set grid

set xrange [128:65536]
set logscale x 8
set xlabel "Length of Input Sequence"

set ylabel "Normalized Data Rate"

# plot
plot "seq_len.dat" using 1:($2/16) with lines linewidth 4 linetype 1,\
     "seq_len.dat" using 1:($2/16):($3/16):($4/16) with yerrorbars linewidth 3 linetype 1 pointtype 6 pointsize 1

     