
# set output file
set term postscript enhanced fontscale 1.6
set output "sorter.ps"

# define graph
set grid

set xrange [0:4.5]
set xlabel "Size of Data Sets (2^{20} records)"

set yrange [0.01:200]
set ylabel "Total Sorting Time (million cycles)"
set logscale y 10

set style line 1 linewidth 4 linetype 1 pointtype 5 pointsize 1.5
set style line 2 linewidth 4 linetype 2 pointtype 6 pointsize 1.5
set style line 3 linewidth 4 linetype 3 pointtype 7 pointsize 1.5
set style line 4 linewidth 4 linetype 4 pointtype 8 pointsize 1.5
set style line 5 linewidth 4 linetype 5 pointtype 9 pointsize 1.5

set key right bottom box

# plot
plot "sorter.dat" using ($1/1024):($2/1000000) with linespoints ls 1 title "FIFO Merge", \
     "sorter.dat" using ($1/1024):($3/1000000) with linespoints ls 2 title "PMT(4)", \
     "sorter.dat" using ($1/1024):($4/1000000) with linespoints ls 3 title "PMT(8)", \
     "sorter.dat" using ($1/1024):($5/1000000) with linespoints ls 4 title "PMT(16)", \
     "sorter.dat" using ($1/1024):($6/1000000) with linespoints ls 5 title "PMT(32)"
     