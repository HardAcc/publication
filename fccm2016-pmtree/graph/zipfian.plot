
# set output file
set term postscript enhanced fontscale 1.6
set output "zipfian.ps"
set size square

# define graph
set key left bottom box
set grid

set xrange [0:1]
set xlabel "Skew {/Symbol q}"

set yrange [0:1]
set ylabel "Normalized Data Rate"

set style line 1 linewidth 4 linetype 1 pointtype 5 pointsize 1
set style line 2 linewidth 4 linetype 2 pointtype 6 pointsize 1

# plot
plot "zipfian.dat" using 1:($2/16) with linespoints ls 1 title "optimized",\
     "zipfian.dat" using 1:($4/16) with linespoints ls 2 title "original"
     