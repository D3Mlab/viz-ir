clear
reset
set encoding iso_8859_1
set grid


set datafile missing "NaN"

set yrang [0:1]
set xrang [10:10000]
set logscale x

set xtics (10,100, 1000,10000)
#set xtics nomirror rotate by -45
set ylabel "F1-Score" font "Courier,24"
set xlabel "# data" font "Courier,24"
set format x "10^{%L}"



set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key
set style fill  solid 0.2 noborder
set size 1.1,0.46

set term postscript eps enhanced color "Courier,19"
set output "f1_performance_posrate_2.0.eps"
set tmargin 1.9


set multiplot layout 1,3
set size 0.45,0.45
set origin 0,0
set title "{/Symbol l}=0.6"  font "Courier,22" 

plot "data/performance_posrate_2.0_0.6.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.6.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.6.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.6.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.6.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.6.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.6.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.6.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'


unset ylabel
set format y ""
set size 0.37,0.45
set origin 0.41,0
set title "{/Symbol l}=0.9"  font "Courier,22" 

plot "data/performance_posrate_2.0_0.9.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.9.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.9.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.9.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.9.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.9.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.9.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.9.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'
 


set size 0.37,0.45
set origin 0.74,0
set title "{/Symbol l}=1.0"  font "Courier,22" 
plot "data/performance_posrate_2.0_1.0.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_1.0.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_1.0.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_1.0.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_1.0.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_1.0.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_1.0.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_1.0.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'
 
unset multiplot

###########
###########
###########
clear
reset
set encoding iso_8859_1
set grid


set datafile missing "NaN"

set yrang [0:1]
set xrang [0.6:1]
set logscale x

set xtics (0.6,0.7,0.8,0.9,1.0)
#set xtics nomirror rotate by -45
set ylabel "F1-Score" font "Courier,24"
set xlabel "Value of {/Symbol l}" font "Courier,24"



set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key
set style fill  solid 0.2 noborder
set size 1.1,0.46

set term postscript eps enhanced color "Courier,19"
set output "f1_performance_posrate_Data_150.eps"
set tmargin 1.9


set multiplot layout 1,3
set size 0.45,0.45
set origin 0,0
set title "1% positive data"  font "Courier,18" 

plot "data/performance_posrate_1.0_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'


unset ylabel
set format y ""
set size 0.37,0.45
set origin 0.41,0
set title "10% positive data"  font "Courier,18" 

plot "data/performance_posrate_10.0_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'
 


set size 0.37,0.45
set origin 0.74,0
set title "50% positive data"  font "Courier,18" 
plot "data/performance_posrate_50.0_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'
 
unset multiplot





###########
###########
###########
clear
reset
set encoding iso_8859_1
set grid


set datafile missing "NaN"

set yrang [0:1]
set xrang [0.6:1]
set logscale x

set xtics (0.6,0.7,0.8,0.9,1.0)
#set xtics nomirror rotate by -45
set ylabel "F1-Score" font "Courier,24"
set xlabel "Value of {/Symbol l}" font "Courier,24"



set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key
set style fill  solid 0.2 noborder
set size 1.1,0.46

set term postscript eps enhanced color "Courier,19"
set output "f1_performance_posrate_Data_150.eps"
set tmargin 1.9


set multiplot layout 1,3
set size 0.45,0.45
set origin 0,0
set title "1% positive data"  font "Courier,18" 

plot "data/performance_posrate_1.0_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'


unset ylabel
set format y ""
set size 0.37,0.45
set origin 0.41,0
set title "10% positive data"  font "Courier,18" 

plot "data/performance_posrate_10.0_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'
 


set size 0.37,0.45
set origin 0.74,0
set title "50% positive data"  font "Courier,18" 
plot "data/performance_posrate_50.0_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'
 
unset multiplot






###########
###########
###########
clear
reset
set encoding iso_8859_1
set grid


set datafile missing "NaN"

set yrang [0:50]
set xrang [0.6:1]
set logscale x

set xtics (0.6,0.7,0.8,0.9,1.0)
#set xtics nomirror rotate by -45
set ylabel "Time (seconds)" font "Courier,24"
set xlabel "Value of {/Symbol l}" font "Courier,24"



set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key
set style fill  solid 0.2 noborder
set size 1.1,0.46

set term postscript eps enhanced color "Courier,19"
set output "time_posrate_Data_150.eps"
set tmargin 1.9


set multiplot layout 1,3
set size 0.45,0.45
set origin 0,0
set title "3% positive data"  font "Courier,20" 

plot "data/time_posrate_3.0_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_3.0_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_3.0_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_3.0_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_3.0_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_3.0_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_3.0_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_3.0_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'


unset ylabel
set format y ""
set size 0.37,0.45
set origin 0.41,0
set title "20% positive data"  font "Courier,20" 

plot "data/time_posrate_20.0_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_20.0_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_20.0_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_20.0_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_20.0_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_20.0_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_20.0_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_20.0_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'
 


set size 0.37,0.45
set origin 0.74,0
set title "30% positive data"  font "Courier,20" 
plot "data/time_posrate_30.0_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_30.0_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_30.0_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_30.0_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_30.0_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_30.0_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_30.0_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_30.0_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'
 
unset multiplot






###########
###########
###########

clear
reset
set encoding iso_8859_1
set grid


set datafile missing "NaN"

set yrang [0:100]
set xrang [0.5:50]
set logscale x

set xtics (0.5,5,10,20,50)
#set xtics nomirror rotate by -45
set ylabel "Time (seconds)" font "Courier,24"
set xlabel "Rate of positive data" font "Courier,17"



set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key
set style fill  solid 0.2 noborder
set size 1.1,0.46

set term postscript eps enhanced color "Courier,19"
set output "time_Data_150.eps"
set tmargin 1.9


set multiplot layout 1,3
set size 0.45,0.45
set origin 0,0
set title "{/Symbol l}=0.6"  font "Courier,20" 

plot "data/time_lambda_0.6_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.6_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.6_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.6_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.6_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.6_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.6_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.6_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'


unset ylabel
set format y ""
set size 0.37,0.45
set origin 0.41,0
set title "{/Symbol l}=0.8"  font "Courier,20" 
plot "data/time_lambda_0.8_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.8_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.8_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.8_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.8_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.8_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.8_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.8_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'
 


set size 0.37,0.45
set origin 0.74,0
set title "{/Symbol l}=1.0"  font "Courier,20" 
plot "data/time_lambda_1.0_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_1.0_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_1.0_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_1.0_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_1.0_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_1.0_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_1.0_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_1.0_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'
 
unset multiplot


###########
###########
###########


set size 0.7,0.5
set grid
#set key top left
#set key  reverse Left 
#unset key
set term postscript eps enhanced color "Courier,19"

unset yrang
unset logscale y
set ylabel "Time\n (seconds)" font "Courier,24"
set xlabel "# data" font "Courier,28"
unset key
set ytics (0,1,2,3)  font "Courier,28"
#set xrang [10:10000]

set xtics (10,100,150) font "Courier,28"
set xrang [10:150]

set yrang [0:3]
set output "time_posrate_2.0_0.9.eps" 
plot "data/time_posrate_2.0_0.9.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_2.0_0.9.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_2.0_0.9.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_2.0_0.9.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_2.0_0.9.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_2.0_0.9.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'


#########
#########
#########
clear
reset
set encoding iso_8859_1
set grid
 
 
set datafile missing "NaN"
 
set yrang [0:1]
set xrang [0.5:50]
set logscale x
 
set xtics (0.5,5,10,20,50)
#set xtics nomirror rotate by -45
set ylabel "F1-Score" font "Courier,24"
set xlabel "Rate of positive data" font "Courier,16"
 
 
 
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key
set style fill  solid 0.2 noborder
set size 0.78,0.46
 
set term postscript eps enhanced color "Courier,19"

set output "f1_performance_Data_150.eps"
set tmargin 1.9
 
 
set multiplot layout 1,3
set size 0.45,0.45
set origin 0,0
set title "{/Symbol l}=0.6"  font "Courier,18" 

plot "data/performance_lambda_0.6_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'


unset ylabel
set format y ""
set size 0.37,0.45
set origin 0.42,0
set title "{/Symbol l}=0.9"  font "Courier,18" 

plot "data/performance_lambda_0.9_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'
 
unset multiplot
 

