clear
reset
set encoding iso_8859_1
set grid



###########################################################################################
############################ Performance Precision Vs#Data #################################
###########################################################################################



set datafile missing "NaN"

set size 0.6,0.5

#set yrang [0:1]

set xrang [10:10000]
#set xtics (10, 20, 30, 50, 70, 100, 150,200,300,400,500)
set xtics (10,100, 1000,10000)
set logscale x
#set xtics nomirror rotate by -45
set ylabel "Precision" font "Courier,24"
set xlabel "# data" font "Courier,24"



set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_0.5_0.6.eps"
plot "data/performance_posrate_0.5_0.6.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_0.6.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_0.6.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_0.6.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_0.6.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_0.6.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_0.6.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_0.6.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_0.6.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_0.6.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_1.0_0.6.eps"
plot "data/performance_posrate_1.0_0.6.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_0.6.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_0.6.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_0.6.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_0.6.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_0.6.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_0.6.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_0.6.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_0.6.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_0.6.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_2.0_0.6.eps"
plot "data/performance_posrate_2.0_0.6.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.6.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.6.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.6.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.6.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_0.6.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_0.6.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.6.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.6.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.6.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_3.0_0.6.eps"
plot "data/performance_posrate_3.0_0.6.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_0.6.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_0.6.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_0.6.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_0.6.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_0.6.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_0.6.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_0.6.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_0.6.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_0.6.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_4.0_0.6.eps"
plot "data/performance_posrate_4.0_0.6.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_0.6.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_0.6.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_0.6.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_0.6.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_0.6.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_0.6.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_0.6.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_0.6.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_0.6.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_5.0_0.6.eps"
plot "data/performance_posrate_5.0_0.6.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_0.6.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_0.6.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_0.6.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_0.6.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_0.6.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_0.6.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_0.6.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_0.6.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_0.6.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_10.0_0.6.eps"
plot "data/performance_posrate_10.0_0.6.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_0.6.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_0.6.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_0.6.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_0.6.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_0.6.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_0.6.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_0.6.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_0.6.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_0.6.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_20.0_0.6.eps"
plot "data/performance_posrate_20.0_0.6.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_0.6.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_0.6.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_0.6.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_0.6.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_0.6.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_0.6.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_0.6.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_0.6.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_0.6.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_30.0_0.6.eps"
plot "data/performance_posrate_30.0_0.6.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_0.6.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_0.6.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_0.6.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_0.6.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_0.6.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_0.6.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_0.6.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_0.6.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_0.6.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_50.0_0.6.eps"
plot "data/performance_posrate_50.0_0.6.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_0.6.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_0.6.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_0.6.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_0.6.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_0.6.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_0.6.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_0.6.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_0.6.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_0.6.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_0.5_0.7.eps"
plot "data/performance_posrate_0.5_0.7.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_0.7.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_0.7.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_0.7.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_0.7.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_0.7.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_0.7.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_0.7.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_0.7.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_0.7.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_1.0_0.7.eps"
plot "data/performance_posrate_1.0_0.7.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_0.7.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_0.7.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_0.7.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_0.7.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_0.7.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_0.7.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_0.7.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_0.7.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_0.7.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_2.0_0.7.eps"
plot "data/performance_posrate_2.0_0.7.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.7.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.7.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.7.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.7.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_0.7.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_0.7.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.7.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.7.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.7.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_3.0_0.7.eps"
plot "data/performance_posrate_3.0_0.7.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_0.7.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_0.7.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_0.7.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_0.7.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_0.7.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_0.7.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_0.7.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_0.7.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_0.7.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_4.0_0.7.eps"
plot "data/performance_posrate_4.0_0.7.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_0.7.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_0.7.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_0.7.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_0.7.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_0.7.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_0.7.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_0.7.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_0.7.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_0.7.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_5.0_0.7.eps"
plot "data/performance_posrate_5.0_0.7.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_0.7.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_0.7.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_0.7.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_0.7.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_0.7.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_0.7.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_0.7.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_0.7.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_0.7.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_10.0_0.7.eps"
plot "data/performance_posrate_10.0_0.7.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_0.7.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_0.7.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_0.7.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_0.7.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_0.7.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_0.7.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_0.7.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_0.7.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_0.7.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_20.0_0.7.eps"
plot "data/performance_posrate_20.0_0.7.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_0.7.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_0.7.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_0.7.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_0.7.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_0.7.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_0.7.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_0.7.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_0.7.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_0.7.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_30.0_0.7.eps"
plot "data/performance_posrate_30.0_0.7.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_0.7.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_0.7.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_0.7.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_0.7.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_0.7.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_0.7.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_0.7.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_0.7.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_0.7.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_50.0_0.7.eps"
plot "data/performance_posrate_50.0_0.7.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_0.7.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_0.7.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_0.7.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_0.7.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_0.7.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_0.7.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_0.7.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_0.7.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_0.7.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_0.5_0.8.eps"
plot "data/performance_posrate_0.5_0.8.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_0.8.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_0.8.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_0.8.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_0.8.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_0.8.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_0.8.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_0.8.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_0.8.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_0.8.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_1.0_0.8.eps"
plot "data/performance_posrate_1.0_0.8.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_0.8.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_0.8.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_0.8.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_0.8.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_0.8.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_0.8.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_0.8.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_0.8.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_0.8.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_2.0_0.8.eps"
plot "data/performance_posrate_2.0_0.8.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.8.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.8.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.8.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.8.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_0.8.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_0.8.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.8.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.8.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.8.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_3.0_0.8.eps"
plot "data/performance_posrate_3.0_0.8.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_0.8.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_0.8.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_0.8.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_0.8.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_0.8.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_0.8.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_0.8.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_0.8.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_0.8.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_4.0_0.8.eps"
plot "data/performance_posrate_4.0_0.8.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_0.8.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_0.8.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_0.8.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_0.8.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_0.8.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_0.8.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_0.8.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_0.8.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_0.8.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_5.0_0.8.eps"
plot "data/performance_posrate_5.0_0.8.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_0.8.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_0.8.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_0.8.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_0.8.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_0.8.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_0.8.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_0.8.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_0.8.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_0.8.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_10.0_0.8.eps"
plot "data/performance_posrate_10.0_0.8.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_0.8.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_0.8.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_0.8.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_0.8.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_0.8.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_0.8.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_0.8.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_0.8.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_0.8.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_20.0_0.8.eps"
plot "data/performance_posrate_20.0_0.8.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_0.8.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_0.8.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_0.8.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_0.8.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_0.8.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_0.8.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_0.8.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_0.8.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_0.8.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_30.0_0.8.eps"
plot "data/performance_posrate_30.0_0.8.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_0.8.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_0.8.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_0.8.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_0.8.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_0.8.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_0.8.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_0.8.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_0.8.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_0.8.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_50.0_0.8.eps"
plot "data/performance_posrate_50.0_0.8.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_0.8.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_0.8.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_0.8.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_0.8.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_0.8.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_0.8.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_0.8.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_0.8.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_0.8.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_0.5_0.9.eps"
plot "data/performance_posrate_0.5_0.9.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_0.9.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_0.9.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_0.9.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_0.9.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_0.9.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_0.9.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_0.9.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_0.9.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_0.9.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_1.0_0.9.eps"
plot "data/performance_posrate_1.0_0.9.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_0.9.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_0.9.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_0.9.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_0.9.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_0.9.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_0.9.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_0.9.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_0.9.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_0.9.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_2.0_0.9.eps"
plot "data/performance_posrate_2.0_0.9.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.9.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.9.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.9.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.9.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_0.9.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_0.9.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.9.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.9.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.9.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_3.0_0.9.eps"
plot "data/performance_posrate_3.0_0.9.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_0.9.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_0.9.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_0.9.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_0.9.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_0.9.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_0.9.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_0.9.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_0.9.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_0.9.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_4.0_0.9.eps"
plot "data/performance_posrate_4.0_0.9.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_0.9.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_0.9.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_0.9.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_0.9.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_0.9.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_0.9.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_0.9.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_0.9.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_0.9.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_5.0_0.9.eps"
plot "data/performance_posrate_5.0_0.9.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_0.9.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_0.9.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_0.9.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_0.9.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_0.9.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_0.9.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_0.9.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_0.9.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_0.9.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_10.0_0.9.eps"
plot "data/performance_posrate_10.0_0.9.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_0.9.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_0.9.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_0.9.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_0.9.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_0.9.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_0.9.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_0.9.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_0.9.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_0.9.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_20.0_0.9.eps"
plot "data/performance_posrate_20.0_0.9.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_0.9.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_0.9.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_0.9.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_0.9.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_0.9.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_0.9.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_0.9.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_0.9.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_0.9.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_30.0_0.9.eps"
plot "data/performance_posrate_30.0_0.9.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_0.9.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_0.9.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_0.9.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_0.9.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_0.9.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_0.9.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_0.9.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_0.9.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_0.9.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_50.0_0.9.eps"
plot "data/performance_posrate_50.0_0.9.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_0.9.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_0.9.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_0.9.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_0.9.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_0.9.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_0.9.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_0.9.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_0.9.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_0.9.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_0.5_1.0.eps"
plot "data/performance_posrate_0.5_1.0.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_1.0.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_1.0.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_1.0.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_1.0.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_1.0.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_1.0.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_1.0.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_1.0.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_1.0.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_1.0_1.0.eps"
plot "data/performance_posrate_1.0_1.0.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_1.0.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_1.0.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_1.0.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_1.0.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_1.0.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_1.0.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_1.0.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_1.0.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_1.0.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_2.0_1.0.eps"
plot "data/performance_posrate_2.0_1.0.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_1.0.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_1.0.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_1.0.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_1.0.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_1.0.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_1.0.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_1.0.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_1.0.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_1.0.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_3.0_1.0.eps"
plot "data/performance_posrate_3.0_1.0.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_1.0.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_1.0.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_1.0.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_1.0.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_1.0.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_1.0.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_1.0.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_1.0.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_1.0.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_4.0_1.0.eps"
plot "data/performance_posrate_4.0_1.0.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_1.0.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_1.0.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_1.0.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_1.0.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_1.0.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_1.0.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_1.0.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_1.0.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_1.0.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_5.0_1.0.eps"
plot "data/performance_posrate_5.0_1.0.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_1.0.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_1.0.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_1.0.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_1.0.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_1.0.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_1.0.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_1.0.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_1.0.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_1.0.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_10.0_1.0.eps"
plot "data/performance_posrate_10.0_1.0.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_1.0.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_1.0.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_1.0.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_1.0.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_1.0.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_1.0.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_1.0.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_1.0.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_1.0.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_20.0_1.0.eps"
plot "data/performance_posrate_20.0_1.0.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_1.0.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_1.0.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_1.0.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_1.0.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_1.0.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_1.0.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_1.0.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_1.0.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_1.0.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_30.0_1.0.eps"
plot "data/performance_posrate_30.0_1.0.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_1.0.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_1.0.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_1.0.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_1.0.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_1.0.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_1.0.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_1.0.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_1.0.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_1.0.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_50.0_1.0.eps"
plot "data/performance_posrate_50.0_1.0.txt" using 1:2 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_1.0.txt" using 1:2:3 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_1.0.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_1.0.txt" using 1:10:11 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_1.0.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_1.0.txt" using 1:18:19 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_1.0.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_1.0.txt" using 1:26:27 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_1.0.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_1.0.txt" using 1:34:35 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'


###########################################################################################
############################## Performance Precision Vs Lambda #############################
###########################################################################################

set size 0.5,0.5


set xrang [0.6:1]
unset logscale x
unset logscale y
#set xtics nomirror rotate by -45
set ylabel "Precision" font "Courier,24"
set xlabel "Value of {/Symbol l}" font "Courier,24"
set xtics (0.6,0.7,0.8,0.9,1.0)

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key

set term postscript eps enhanced color "Courier,19"
set output "plots/precision_performance_posrate_0.5_Data_10.eps"
plot "data/performance_posrate_0.5_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_10.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_0.5_Data_20.eps"
plot "data/performance_posrate_0.5_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_20.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_0.5_Data_30.eps"
plot "data/performance_posrate_0.5_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_30.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_0.5_Data_50.eps"
plot "data/performance_posrate_0.5_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_50.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_0.5_Data_100.eps"
plot "data/performance_posrate_0.5_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_100.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_0.5_Data_150.eps"
plot "data/performance_posrate_0.5_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_150.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_1.0_Data_10.eps"
plot "data/performance_posrate_1.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_10.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_1.0_Data_20.eps"
plot "data/performance_posrate_1.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_20.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_1.0_Data_30.eps"
plot "data/performance_posrate_1.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_30.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_1.0_Data_50.eps"
plot "data/performance_posrate_1.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_50.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_1.0_Data_100.eps"
plot "data/performance_posrate_1.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_100.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_1.0_Data_150.eps"
plot "data/performance_posrate_1.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_150.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_2.0_Data_10.eps"
plot "data/performance_posrate_2.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_10.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_2.0_Data_20.eps"
plot "data/performance_posrate_2.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_20.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_2.0_Data_30.eps"
plot "data/performance_posrate_2.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_30.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_2.0_Data_50.eps"
plot "data/performance_posrate_2.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_50.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_2.0_Data_100.eps"
plot "data/performance_posrate_2.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_100.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_2.0_Data_150.eps"
plot "data/performance_posrate_2.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_150.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_3.0_Data_10.eps"
plot "data/performance_posrate_3.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_10.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_3.0_Data_20.eps"
plot "data/performance_posrate_3.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_20.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_3.0_Data_30.eps"
plot "data/performance_posrate_3.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_30.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_3.0_Data_50.eps"
plot "data/performance_posrate_3.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_50.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_3.0_Data_100.eps"
plot "data/performance_posrate_3.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_100.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_3.0_Data_150.eps"
plot "data/performance_posrate_3.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_150.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_4.0_Data_10.eps"
plot "data/performance_posrate_4.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_10.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_4.0_Data_20.eps"
plot "data/performance_posrate_4.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_20.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_4.0_Data_30.eps"
plot "data/performance_posrate_4.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_30.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_4.0_Data_50.eps"
plot "data/performance_posrate_4.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_50.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_4.0_Data_100.eps"
plot "data/performance_posrate_4.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_100.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_4.0_Data_150.eps"
plot "data/performance_posrate_4.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_150.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_5.0_Data_10.eps"
plot "data/performance_posrate_5.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_10.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_5.0_Data_20.eps"
plot "data/performance_posrate_5.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_20.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_5.0_Data_30.eps"
plot "data/performance_posrate_5.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_30.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_5.0_Data_50.eps"
plot "data/performance_posrate_5.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_50.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_5.0_Data_100.eps"
plot "data/performance_posrate_5.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_100.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_5.0_Data_150.eps"
plot "data/performance_posrate_5.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_150.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_10.0_Data_10.eps"
plot "data/performance_posrate_10.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_10.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_10.0_Data_20.eps"
plot "data/performance_posrate_10.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_20.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_10.0_Data_30.eps"
plot "data/performance_posrate_10.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_30.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_10.0_Data_50.eps"
plot "data/performance_posrate_10.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_50.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_10.0_Data_100.eps"
plot "data/performance_posrate_10.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_100.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_10.0_Data_150.eps"
plot "data/performance_posrate_10.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_150.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_20.0_Data_10.eps"
plot "data/performance_posrate_20.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_10.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_20.0_Data_20.eps"
plot "data/performance_posrate_20.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_20.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_20.0_Data_30.eps"
plot "data/performance_posrate_20.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_30.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_20.0_Data_50.eps"
plot "data/performance_posrate_20.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_50.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_20.0_Data_100.eps"
plot "data/performance_posrate_20.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_100.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_20.0_Data_150.eps"
plot "data/performance_posrate_20.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_150.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_30.0_Data_10.eps"
plot "data/performance_posrate_30.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_10.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_30.0_Data_20.eps"
plot "data/performance_posrate_30.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_20.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_30.0_Data_30.eps"
plot "data/performance_posrate_30.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_30.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_30.0_Data_50.eps"
plot "data/performance_posrate_30.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_50.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_30.0_Data_100.eps"
plot "data/performance_posrate_30.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_100.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_30.0_Data_150.eps"
plot "data/performance_posrate_30.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_150.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_50.0_Data_10.eps"
plot "data/performance_posrate_50.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_10.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_50.0_Data_20.eps"
plot "data/performance_posrate_50.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_20.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_50.0_Data_30.eps"
plot "data/performance_posrate_50.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_30.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_50.0_Data_50.eps"
plot "data/performance_posrate_50.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_50.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_50.0_Data_100.eps"
plot "data/performance_posrate_50.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_100.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_posrate_50.0_Data_150.eps"
plot "data/performance_posrate_50.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_150.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

###########################################################################################
############################ Performance Precision Vs Rate Pos #############################
###########################################################################################

set size 0.6,0.5


set xrang [0.5:50]
set logscale x
unset logscale y
#set xtics nomirror rotate by -45
set ylabel "Precision" font "Courier,24"
set xlabel "Rate of positive data" font "Courier,24"
set xtics (0.5,5,10,20,50)

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key



set output "plots/precision_performance_lambda_0.6_Data_10.eps"
plot "data/performance_lambda_0.6_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_10.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.7_Data_10.eps"
plot "data/performance_lambda_0.7_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_10.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.8_Data_10.eps"
plot "data/performance_lambda_0.8_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_10.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.9_Data_10.eps"
plot "data/performance_lambda_0.9_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_10.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_1.0_Data_10.eps"
plot "data/performance_lambda_1.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_10.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.6_Data_20.eps"
plot "data/performance_lambda_0.6_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_20.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.7_Data_20.eps"
plot "data/performance_lambda_0.7_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_20.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.8_Data_20.eps"
plot "data/performance_lambda_0.8_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_20.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.9_Data_20.eps"
plot "data/performance_lambda_0.9_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_20.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_1.0_Data_20.eps"
plot "data/performance_lambda_1.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_20.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.6_Data_30.eps"
plot "data/performance_lambda_0.6_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_30.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.7_Data_30.eps"
plot "data/performance_lambda_0.7_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_30.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.8_Data_30.eps"
plot "data/performance_lambda_0.8_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_30.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.9_Data_30.eps"
plot "data/performance_lambda_0.9_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_30.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_1.0_Data_30.eps"
plot "data/performance_lambda_1.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_30.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.6_Data_50.eps"
plot "data/performance_lambda_0.6_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_50.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.7_Data_50.eps"
plot "data/performance_lambda_0.7_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_50.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.8_Data_50.eps"
plot "data/performance_lambda_0.8_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_50.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.9_Data_50.eps"
plot "data/performance_lambda_0.9_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_50.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_1.0_Data_50.eps"
plot "data/performance_lambda_1.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_50.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.6_Data_100.eps"
plot "data/performance_lambda_0.6_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_100.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.7_Data_100.eps"
plot "data/performance_lambda_0.7_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_100.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.8_Data_100.eps"
plot "data/performance_lambda_0.8_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_100.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.9_Data_100.eps"
plot "data/performance_lambda_0.9_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_100.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_1.0_Data_100.eps"
plot "data/performance_lambda_1.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_100.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.6_Data_150.eps"
plot "data/performance_lambda_0.6_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_150.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.7_Data_150.eps"
plot "data/performance_lambda_0.7_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_150.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.8_Data_150.eps"
plot "data/performance_lambda_0.8_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_150.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_0.9_Data_150.eps"
plot "data/performance_lambda_0.9_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_150.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/precision_performance_lambda_1.0_Data_150.eps"
plot "data/performance_lambda_1.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:2:3 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:10 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:10:11 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:18 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:18:19 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:26 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:26:27 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:34 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_150.txt" using 1:34:35 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'


###########################################################################################
############################ Performance Recall Vs#Data #################################
###########################################################################################

set datafile missing "NaN"

set size 0.6,0.5

#set yrang [0:1]

set xrang [10:10000]
#set xtics (10, 20, 30, 50, 70, 100, 150,200,300,400,500)
set xtics (10,100, 1000,10000)
set logscale x
#set xtics nomirror rotate by -45
set ylabel "Recall" font "Courier,24"
set xlabel "# data" font "Courier,24"



set key top left
set key  reverse Left 
#set ylabel "Recall" font "Courier,22"
unset key

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_0.5_0.6.eps"
plot "data/performance_posrate_0.5_0.6.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_0.6.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_0.6.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_0.6.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_0.6.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_0.6.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_0.6.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_0.6.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_0.6.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_0.6.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_1.0_0.6.eps"
plot "data/performance_posrate_1.0_0.6.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_0.6.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_0.6.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_0.6.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_0.6.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_0.6.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_0.6.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_0.6.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_0.6.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_0.6.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_2.0_0.6.eps"
plot "data/performance_posrate_2.0_0.6.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.6.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.6.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.6.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.6.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_0.6.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_0.6.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.6.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.6.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.6.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_3.0_0.6.eps"
plot "data/performance_posrate_3.0_0.6.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_0.6.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_0.6.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_0.6.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_0.6.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_0.6.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_0.6.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_0.6.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_0.6.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_0.6.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_4.0_0.6.eps"
plot "data/performance_posrate_4.0_0.6.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_0.6.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_0.6.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_0.6.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_0.6.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_0.6.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_0.6.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_0.6.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_0.6.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_0.6.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_5.0_0.6.eps"
plot "data/performance_posrate_5.0_0.6.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_0.6.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_0.6.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_0.6.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_0.6.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_0.6.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_0.6.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_0.6.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_0.6.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_0.6.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_10.0_0.6.eps"
plot "data/performance_posrate_10.0_0.6.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_0.6.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_0.6.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_0.6.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_0.6.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_0.6.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_0.6.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_0.6.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_0.6.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_0.6.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_20.0_0.6.eps"
plot "data/performance_posrate_20.0_0.6.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_0.6.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_0.6.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_0.6.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_0.6.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_0.6.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_0.6.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_0.6.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_0.6.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_0.6.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_30.0_0.6.eps"
plot "data/performance_posrate_30.0_0.6.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_0.6.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_0.6.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_0.6.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_0.6.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_0.6.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_0.6.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_0.6.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_0.6.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_0.6.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_50.0_0.6.eps"
plot "data/performance_posrate_50.0_0.6.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_0.6.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_0.6.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_0.6.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_0.6.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_0.6.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_0.6.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_0.6.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_0.6.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_0.6.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_0.5_0.7.eps"
plot "data/performance_posrate_0.5_0.7.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_0.7.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_0.7.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_0.7.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_0.7.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_0.7.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_0.7.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_0.7.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_0.7.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_0.7.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_1.0_0.7.eps"
plot "data/performance_posrate_1.0_0.7.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_0.7.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_0.7.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_0.7.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_0.7.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_0.7.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_0.7.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_0.7.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_0.7.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_0.7.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_2.0_0.7.eps"
plot "data/performance_posrate_2.0_0.7.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.7.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.7.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.7.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.7.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_0.7.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_0.7.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.7.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.7.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.7.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_3.0_0.7.eps"
plot "data/performance_posrate_3.0_0.7.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_0.7.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_0.7.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_0.7.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_0.7.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_0.7.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_0.7.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_0.7.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_0.7.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_0.7.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_4.0_0.7.eps"
plot "data/performance_posrate_4.0_0.7.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_0.7.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_0.7.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_0.7.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_0.7.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_0.7.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_0.7.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_0.7.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_0.7.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_0.7.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_5.0_0.7.eps"
plot "data/performance_posrate_5.0_0.7.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_0.7.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_0.7.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_0.7.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_0.7.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_0.7.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_0.7.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_0.7.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_0.7.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_0.7.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_10.0_0.7.eps"
plot "data/performance_posrate_10.0_0.7.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_0.7.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_0.7.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_0.7.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_0.7.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_0.7.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_0.7.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_0.7.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_0.7.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_0.7.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_20.0_0.7.eps"
plot "data/performance_posrate_20.0_0.7.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_0.7.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_0.7.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_0.7.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_0.7.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_0.7.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_0.7.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_0.7.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_0.7.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_0.7.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_30.0_0.7.eps"
plot "data/performance_posrate_30.0_0.7.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_0.7.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_0.7.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_0.7.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_0.7.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_0.7.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_0.7.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_0.7.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_0.7.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_0.7.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_50.0_0.7.eps"
plot "data/performance_posrate_50.0_0.7.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_0.7.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_0.7.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_0.7.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_0.7.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_0.7.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_0.7.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_0.7.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_0.7.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_0.7.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_0.5_0.8.eps"
plot "data/performance_posrate_0.5_0.8.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_0.8.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_0.8.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_0.8.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_0.8.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_0.8.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_0.8.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_0.8.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_0.8.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_0.8.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_1.0_0.8.eps"
plot "data/performance_posrate_1.0_0.8.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_0.8.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_0.8.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_0.8.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_0.8.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_0.8.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_0.8.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_0.8.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_0.8.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_0.8.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_2.0_0.8.eps"
plot "data/performance_posrate_2.0_0.8.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.8.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.8.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.8.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.8.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_0.8.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_0.8.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.8.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.8.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.8.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_3.0_0.8.eps"
plot "data/performance_posrate_3.0_0.8.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_0.8.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_0.8.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_0.8.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_0.8.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_0.8.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_0.8.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_0.8.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_0.8.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_0.8.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_4.0_0.8.eps"
plot "data/performance_posrate_4.0_0.8.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_0.8.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_0.8.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_0.8.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_0.8.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_0.8.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_0.8.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_0.8.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_0.8.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_0.8.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_5.0_0.8.eps"
plot "data/performance_posrate_5.0_0.8.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_0.8.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_0.8.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_0.8.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_0.8.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_0.8.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_0.8.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_0.8.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_0.8.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_0.8.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_10.0_0.8.eps"
plot "data/performance_posrate_10.0_0.8.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_0.8.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_0.8.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_0.8.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_0.8.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_0.8.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_0.8.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_0.8.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_0.8.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_0.8.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_20.0_0.8.eps"
plot "data/performance_posrate_20.0_0.8.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_0.8.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_0.8.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_0.8.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_0.8.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_0.8.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_0.8.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_0.8.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_0.8.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_0.8.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_30.0_0.8.eps"
plot "data/performance_posrate_30.0_0.8.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_0.8.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_0.8.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_0.8.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_0.8.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_0.8.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_0.8.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_0.8.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_0.8.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_0.8.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_50.0_0.8.eps"
plot "data/performance_posrate_50.0_0.8.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_0.8.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_0.8.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_0.8.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_0.8.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_0.8.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_0.8.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_0.8.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_0.8.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_0.8.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_0.5_0.9.eps"
plot "data/performance_posrate_0.5_0.9.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_0.9.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_0.9.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_0.9.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_0.9.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_0.9.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_0.9.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_0.9.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_0.9.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_0.9.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_1.0_0.9.eps"
plot "data/performance_posrate_1.0_0.9.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_0.9.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_0.9.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_0.9.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_0.9.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_0.9.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_0.9.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_0.9.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_0.9.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_0.9.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_2.0_0.9.eps"
plot "data/performance_posrate_2.0_0.9.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.9.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.9.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.9.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.9.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_0.9.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_0.9.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.9.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.9.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.9.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_3.0_0.9.eps"
plot "data/performance_posrate_3.0_0.9.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_0.9.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_0.9.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_0.9.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_0.9.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_0.9.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_0.9.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_0.9.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_0.9.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_0.9.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_4.0_0.9.eps"
plot "data/performance_posrate_4.0_0.9.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_0.9.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_0.9.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_0.9.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_0.9.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_0.9.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_0.9.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_0.9.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_0.9.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_0.9.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_5.0_0.9.eps"
plot "data/performance_posrate_5.0_0.9.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_0.9.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_0.9.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_0.9.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_0.9.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_0.9.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_0.9.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_0.9.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_0.9.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_0.9.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_10.0_0.9.eps"
plot "data/performance_posrate_10.0_0.9.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_0.9.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_0.9.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_0.9.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_0.9.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_0.9.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_0.9.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_0.9.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_0.9.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_0.9.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_20.0_0.9.eps"
plot "data/performance_posrate_20.0_0.9.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_0.9.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_0.9.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_0.9.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_0.9.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_0.9.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_0.9.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_0.9.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_0.9.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_0.9.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_30.0_0.9.eps"
plot "data/performance_posrate_30.0_0.9.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_0.9.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_0.9.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_0.9.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_0.9.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_0.9.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_0.9.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_0.9.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_0.9.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_0.9.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_50.0_0.9.eps"
plot "data/performance_posrate_50.0_0.9.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_0.9.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_0.9.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_0.9.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_0.9.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_0.9.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_0.9.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_0.9.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_0.9.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_0.9.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_0.5_1.0.eps"
plot "data/performance_posrate_0.5_1.0.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_1.0.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_1.0.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_1.0.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_1.0.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_1.0.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_1.0.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_1.0.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_1.0.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_1.0.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_1.0_1.0.eps"
plot "data/performance_posrate_1.0_1.0.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_1.0.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_1.0.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_1.0.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_1.0.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_1.0.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_1.0.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_1.0.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_1.0.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_1.0.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_2.0_1.0.eps"
plot "data/performance_posrate_2.0_1.0.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_1.0.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_1.0.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_1.0.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_1.0.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_1.0.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_1.0.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_1.0.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_1.0.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_1.0.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_3.0_1.0.eps"
plot "data/performance_posrate_3.0_1.0.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_1.0.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_1.0.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_1.0.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_1.0.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_1.0.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_1.0.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_1.0.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_1.0.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_1.0.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_4.0_1.0.eps"
plot "data/performance_posrate_4.0_1.0.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_1.0.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_1.0.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_1.0.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_1.0.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_1.0.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_1.0.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_1.0.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_1.0.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_1.0.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_5.0_1.0.eps"
plot "data/performance_posrate_5.0_1.0.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_1.0.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_1.0.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_1.0.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_1.0.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_1.0.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_1.0.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_1.0.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_1.0.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_1.0.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_10.0_1.0.eps"
plot "data/performance_posrate_10.0_1.0.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_1.0.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_1.0.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_1.0.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_1.0.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_1.0.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_1.0.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_1.0.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_1.0.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_1.0.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_20.0_1.0.eps"
plot "data/performance_posrate_20.0_1.0.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_1.0.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_1.0.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_1.0.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_1.0.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_1.0.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_1.0.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_1.0.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_1.0.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_1.0.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_30.0_1.0.eps"
plot "data/performance_posrate_30.0_1.0.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_1.0.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_1.0.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_1.0.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_1.0.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_1.0.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_1.0.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_1.0.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_1.0.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_1.0.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_50.0_1.0.eps"
plot "data/performance_posrate_50.0_1.0.txt" using 1:4 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_1.0.txt" using 1:4:5 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_1.0.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_1.0.txt" using 1:12:13 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_1.0.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_1.0.txt" using 1:20:21 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_1.0.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_1.0.txt" using 1:28:29 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_1.0.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_1.0.txt" using 1:36:37 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'


###########################################################################################
############################## Performance Recall Vs Lambda #############################
###########################################################################################

set size 0.5,0.5


set xrang [0.6:1]
unset logscale x
unset logscale y
#set xtics nomirror rotate by -45
set ylabel "Recall" font "Courier,24"
set xlabel "Value of {/Symbol l}" font "Courier,24"
set xtics (0.6,0.7,0.8,0.9,1.0)

set key top left
set key  reverse Left 
#set ylabel "Recall" font "Courier,22"
unset key

set term postscript eps enhanced color "Courier,19"
set output "plots/recall_performance_posrate_0.5_Data_10.eps"
plot "data/performance_posrate_0.5_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_10.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_0.5_Data_20.eps"
plot "data/performance_posrate_0.5_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_20.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_0.5_Data_30.eps"
plot "data/performance_posrate_0.5_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_30.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_0.5_Data_50.eps"
plot "data/performance_posrate_0.5_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_50.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_0.5_Data_100.eps"
plot "data/performance_posrate_0.5_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_100.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_0.5_Data_150.eps"
plot "data/performance_posrate_0.5_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_150.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_1.0_Data_10.eps"
plot "data/performance_posrate_1.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_10.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_1.0_Data_20.eps"
plot "data/performance_posrate_1.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_20.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_1.0_Data_30.eps"
plot "data/performance_posrate_1.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_30.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_1.0_Data_50.eps"
plot "data/performance_posrate_1.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_50.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_1.0_Data_100.eps"
plot "data/performance_posrate_1.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_100.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_1.0_Data_150.eps"
plot "data/performance_posrate_1.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_150.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_2.0_Data_10.eps"
plot "data/performance_posrate_2.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_10.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_2.0_Data_20.eps"
plot "data/performance_posrate_2.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_20.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_2.0_Data_30.eps"
plot "data/performance_posrate_2.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_30.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_2.0_Data_50.eps"
plot "data/performance_posrate_2.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_50.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_2.0_Data_100.eps"
plot "data/performance_posrate_2.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_100.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_2.0_Data_150.eps"
plot "data/performance_posrate_2.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_150.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_3.0_Data_10.eps"
plot "data/performance_posrate_3.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_10.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_3.0_Data_20.eps"
plot "data/performance_posrate_3.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_20.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_3.0_Data_30.eps"
plot "data/performance_posrate_3.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_30.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_3.0_Data_50.eps"
plot "data/performance_posrate_3.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_50.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_3.0_Data_100.eps"
plot "data/performance_posrate_3.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_100.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_3.0_Data_150.eps"
plot "data/performance_posrate_3.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_150.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_4.0_Data_10.eps"
plot "data/performance_posrate_4.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_10.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_4.0_Data_20.eps"
plot "data/performance_posrate_4.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_20.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_4.0_Data_30.eps"
plot "data/performance_posrate_4.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_30.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_4.0_Data_50.eps"
plot "data/performance_posrate_4.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_50.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_4.0_Data_100.eps"
plot "data/performance_posrate_4.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_100.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_4.0_Data_150.eps"
plot "data/performance_posrate_4.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_150.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_5.0_Data_10.eps"
plot "data/performance_posrate_5.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_10.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_5.0_Data_20.eps"
plot "data/performance_posrate_5.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_20.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_5.0_Data_30.eps"
plot "data/performance_posrate_5.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_30.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_5.0_Data_50.eps"
plot "data/performance_posrate_5.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_50.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_5.0_Data_100.eps"
plot "data/performance_posrate_5.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_100.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_5.0_Data_150.eps"
plot "data/performance_posrate_5.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_150.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_10.0_Data_10.eps"
plot "data/performance_posrate_10.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_10.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_10.0_Data_20.eps"
plot "data/performance_posrate_10.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_20.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_10.0_Data_30.eps"
plot "data/performance_posrate_10.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_30.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_10.0_Data_50.eps"
plot "data/performance_posrate_10.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_50.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_10.0_Data_100.eps"
plot "data/performance_posrate_10.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_100.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_10.0_Data_150.eps"
plot "data/performance_posrate_10.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_150.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_20.0_Data_10.eps"
plot "data/performance_posrate_20.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_10.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_20.0_Data_20.eps"
plot "data/performance_posrate_20.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_20.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_20.0_Data_30.eps"
plot "data/performance_posrate_20.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_30.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_20.0_Data_50.eps"
plot "data/performance_posrate_20.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_50.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_20.0_Data_100.eps"
plot "data/performance_posrate_20.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_100.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_20.0_Data_150.eps"
plot "data/performance_posrate_20.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_150.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_30.0_Data_10.eps"
plot "data/performance_posrate_30.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_10.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_30.0_Data_20.eps"
plot "data/performance_posrate_30.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_20.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_30.0_Data_30.eps"
plot "data/performance_posrate_30.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_30.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_30.0_Data_50.eps"
plot "data/performance_posrate_30.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_50.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_30.0_Data_100.eps"
plot "data/performance_posrate_30.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_100.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_30.0_Data_150.eps"
plot "data/performance_posrate_30.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_150.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_50.0_Data_10.eps"
plot "data/performance_posrate_50.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_10.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_50.0_Data_20.eps"
plot "data/performance_posrate_50.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_20.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_50.0_Data_30.eps"
plot "data/performance_posrate_50.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_30.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_50.0_Data_50.eps"
plot "data/performance_posrate_50.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_50.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_50.0_Data_100.eps"
plot "data/performance_posrate_50.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_100.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_posrate_50.0_Data_150.eps"
plot "data/performance_posrate_50.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_150.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

###########################################################################################
############################ Performance Recall Vs Rate Pos #############################
###########################################################################################

set size 0.6,0.5


set xrang [0.5:50]
set logscale x
unset logscale y
#set xtics nomirror rotate by -45
set ylabel "Recall" font "Courier,24"
set xlabel "Rate of positive data" font "Courier,24"
set xtics (0.5,5,10,20,50)

set key top left
set key  reverse Left 
#set ylabel "Recall" font "Courier,22"
unset key



set output "plots/recall_performance_lambda_0.6_Data_10.eps"
plot "data/performance_lambda_0.6_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_10.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.7_Data_10.eps"
plot "data/performance_lambda_0.7_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_10.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.8_Data_10.eps"
plot "data/performance_lambda_0.8_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_10.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.9_Data_10.eps"
plot "data/performance_lambda_0.9_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_10.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_1.0_Data_10.eps"
plot "data/performance_lambda_1.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_10.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.6_Data_20.eps"
plot "data/performance_lambda_0.6_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_20.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.7_Data_20.eps"
plot "data/performance_lambda_0.7_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_20.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.8_Data_20.eps"
plot "data/performance_lambda_0.8_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_20.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.9_Data_20.eps"
plot "data/performance_lambda_0.9_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_20.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_1.0_Data_20.eps"
plot "data/performance_lambda_1.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_20.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.6_Data_30.eps"
plot "data/performance_lambda_0.6_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_30.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.7_Data_30.eps"
plot "data/performance_lambda_0.7_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_30.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.8_Data_30.eps"
plot "data/performance_lambda_0.8_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_30.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.9_Data_30.eps"
plot "data/performance_lambda_0.9_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_30.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_1.0_Data_30.eps"
plot "data/performance_lambda_1.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_30.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.6_Data_50.eps"
plot "data/performance_lambda_0.6_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_50.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.7_Data_50.eps"
plot "data/performance_lambda_0.7_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_50.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.8_Data_50.eps"
plot "data/performance_lambda_0.8_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_50.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.9_Data_50.eps"
plot "data/performance_lambda_0.9_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_50.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_1.0_Data_50.eps"
plot "data/performance_lambda_1.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_50.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.6_Data_100.eps"
plot "data/performance_lambda_0.6_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_100.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.7_Data_100.eps"
plot "data/performance_lambda_0.7_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_100.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.8_Data_100.eps"
plot "data/performance_lambda_0.8_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_100.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.9_Data_100.eps"
plot "data/performance_lambda_0.9_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_100.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_1.0_Data_100.eps"
plot "data/performance_lambda_1.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_100.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.6_Data_150.eps"
plot "data/performance_lambda_0.6_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_150.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.7_Data_150.eps"
plot "data/performance_lambda_0.7_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_150.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.8_Data_150.eps"
plot "data/performance_lambda_0.8_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_150.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_0.9_Data_150.eps"
plot "data/performance_lambda_0.9_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_150.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/recall_performance_lambda_1.0_Data_150.eps"
plot "data/performance_lambda_1.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:4:5 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:12 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:12:13 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:20 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:20:21 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:28 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:28:29 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:36 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_150.txt" using 1:36:37 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

###########################################################################################
############################ Performance EF1-Score Vs#Data #################################
###########################################################################################
set datafile missing "NaN"

set size 0.6,0.5

#set yrang [0:1]

set xrang [10:10000]
#set xtics (10, 20, 30, 50, 70, 100, 150,200,300,400,500)
set xtics (10,100, 1000,10000)
set logscale x
#set xtics nomirror rotate by -45
set ylabel "EF1-Score" font "Courier,24"
set xlabel "# data" font "Courier,24"



set key top left
set key  reverse Left 
#set ylabel "EF1-Score" font "Courier,22"
unset key

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_0.5_0.6.eps"
plot "data/performance_posrate_0.5_0.6.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_0.6.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_0.6.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_0.6.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_0.6.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_0.6.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_0.6.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_0.6.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_0.6.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_0.6.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_1.0_0.6.eps"
plot "data/performance_posrate_1.0_0.6.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_0.6.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_0.6.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_0.6.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_0.6.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_0.6.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_0.6.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_0.6.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_0.6.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_0.6.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_2.0_0.6.eps"
plot "data/performance_posrate_2.0_0.6.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.6.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.6.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.6.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.6.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_0.6.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_0.6.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.6.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.6.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.6.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_3.0_0.6.eps"
plot "data/performance_posrate_3.0_0.6.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_0.6.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_0.6.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_0.6.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_0.6.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_0.6.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_0.6.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_0.6.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_0.6.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_0.6.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_4.0_0.6.eps"
plot "data/performance_posrate_4.0_0.6.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_0.6.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_0.6.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_0.6.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_0.6.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_0.6.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_0.6.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_0.6.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_0.6.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_0.6.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_5.0_0.6.eps"
plot "data/performance_posrate_5.0_0.6.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_0.6.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_0.6.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_0.6.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_0.6.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_0.6.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_0.6.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_0.6.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_0.6.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_0.6.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_10.0_0.6.eps"
plot "data/performance_posrate_10.0_0.6.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_0.6.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_0.6.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_0.6.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_0.6.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_0.6.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_0.6.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_0.6.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_0.6.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_0.6.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_20.0_0.6.eps"
plot "data/performance_posrate_20.0_0.6.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_0.6.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_0.6.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_0.6.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_0.6.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_0.6.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_0.6.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_0.6.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_0.6.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_0.6.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_30.0_0.6.eps"
plot "data/performance_posrate_30.0_0.6.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_0.6.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_0.6.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_0.6.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_0.6.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_0.6.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_0.6.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_0.6.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_0.6.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_0.6.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_50.0_0.6.eps"
plot "data/performance_posrate_50.0_0.6.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_0.6.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_0.6.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_0.6.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_0.6.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_0.6.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_0.6.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_0.6.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_0.6.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_0.6.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_0.5_0.7.eps"
plot "data/performance_posrate_0.5_0.7.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_0.7.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_0.7.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_0.7.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_0.7.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_0.7.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_0.7.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_0.7.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_0.7.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_0.7.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_1.0_0.7.eps"
plot "data/performance_posrate_1.0_0.7.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_0.7.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_0.7.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_0.7.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_0.7.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_0.7.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_0.7.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_0.7.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_0.7.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_0.7.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_2.0_0.7.eps"
plot "data/performance_posrate_2.0_0.7.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.7.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.7.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.7.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.7.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_0.7.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_0.7.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.7.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.7.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.7.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_3.0_0.7.eps"
plot "data/performance_posrate_3.0_0.7.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_0.7.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_0.7.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_0.7.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_0.7.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_0.7.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_0.7.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_0.7.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_0.7.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_0.7.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_4.0_0.7.eps"
plot "data/performance_posrate_4.0_0.7.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_0.7.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_0.7.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_0.7.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_0.7.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_0.7.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_0.7.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_0.7.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_0.7.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_0.7.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_5.0_0.7.eps"
plot "data/performance_posrate_5.0_0.7.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_0.7.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_0.7.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_0.7.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_0.7.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_0.7.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_0.7.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_0.7.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_0.7.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_0.7.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_10.0_0.7.eps"
plot "data/performance_posrate_10.0_0.7.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_0.7.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_0.7.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_0.7.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_0.7.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_0.7.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_0.7.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_0.7.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_0.7.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_0.7.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_20.0_0.7.eps"
plot "data/performance_posrate_20.0_0.7.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_0.7.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_0.7.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_0.7.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_0.7.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_0.7.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_0.7.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_0.7.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_0.7.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_0.7.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_30.0_0.7.eps"
plot "data/performance_posrate_30.0_0.7.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_0.7.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_0.7.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_0.7.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_0.7.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_0.7.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_0.7.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_0.7.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_0.7.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_0.7.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_50.0_0.7.eps"
plot "data/performance_posrate_50.0_0.7.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_0.7.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_0.7.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_0.7.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_0.7.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_0.7.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_0.7.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_0.7.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_0.7.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_0.7.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_0.5_0.8.eps"
plot "data/performance_posrate_0.5_0.8.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_0.8.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_0.8.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_0.8.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_0.8.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_0.8.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_0.8.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_0.8.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_0.8.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_0.8.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_1.0_0.8.eps"
plot "data/performance_posrate_1.0_0.8.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_0.8.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_0.8.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_0.8.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_0.8.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_0.8.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_0.8.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_0.8.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_0.8.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_0.8.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_2.0_0.8.eps"
plot "data/performance_posrate_2.0_0.8.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.8.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.8.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.8.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.8.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_0.8.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_0.8.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.8.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.8.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.8.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_3.0_0.8.eps"
plot "data/performance_posrate_3.0_0.8.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_0.8.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_0.8.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_0.8.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_0.8.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_0.8.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_0.8.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_0.8.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_0.8.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_0.8.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_4.0_0.8.eps"
plot "data/performance_posrate_4.0_0.8.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_0.8.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_0.8.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_0.8.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_0.8.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_0.8.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_0.8.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_0.8.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_0.8.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_0.8.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_5.0_0.8.eps"
plot "data/performance_posrate_5.0_0.8.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_0.8.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_0.8.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_0.8.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_0.8.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_0.8.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_0.8.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_0.8.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_0.8.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_0.8.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_10.0_0.8.eps"
plot "data/performance_posrate_10.0_0.8.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_0.8.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_0.8.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_0.8.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_0.8.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_0.8.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_0.8.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_0.8.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_0.8.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_0.8.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_20.0_0.8.eps"
plot "data/performance_posrate_20.0_0.8.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_0.8.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_0.8.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_0.8.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_0.8.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_0.8.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_0.8.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_0.8.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_0.8.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_0.8.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_30.0_0.8.eps"
plot "data/performance_posrate_30.0_0.8.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_0.8.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_0.8.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_0.8.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_0.8.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_0.8.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_0.8.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_0.8.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_0.8.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_0.8.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_50.0_0.8.eps"
plot "data/performance_posrate_50.0_0.8.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_0.8.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_0.8.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_0.8.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_0.8.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_0.8.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_0.8.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_0.8.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_0.8.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_0.8.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_0.5_0.9.eps"
plot "data/performance_posrate_0.5_0.9.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_0.9.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_0.9.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_0.9.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_0.9.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_0.9.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_0.9.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_0.9.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_0.9.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_0.9.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_1.0_0.9.eps"
plot "data/performance_posrate_1.0_0.9.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_0.9.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_0.9.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_0.9.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_0.9.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_0.9.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_0.9.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_0.9.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_0.9.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_0.9.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_2.0_0.9.eps"
plot "data/performance_posrate_2.0_0.9.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.9.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.9.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.9.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.9.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_0.9.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_0.9.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.9.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.9.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.9.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_3.0_0.9.eps"
plot "data/performance_posrate_3.0_0.9.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_0.9.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_0.9.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_0.9.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_0.9.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_0.9.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_0.9.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_0.9.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_0.9.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_0.9.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_4.0_0.9.eps"
plot "data/performance_posrate_4.0_0.9.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_0.9.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_0.9.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_0.9.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_0.9.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_0.9.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_0.9.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_0.9.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_0.9.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_0.9.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_5.0_0.9.eps"
plot "data/performance_posrate_5.0_0.9.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_0.9.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_0.9.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_0.9.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_0.9.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_0.9.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_0.9.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_0.9.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_0.9.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_0.9.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_10.0_0.9.eps"
plot "data/performance_posrate_10.0_0.9.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_0.9.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_0.9.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_0.9.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_0.9.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_0.9.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_0.9.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_0.9.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_0.9.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_0.9.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_20.0_0.9.eps"
plot "data/performance_posrate_20.0_0.9.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_0.9.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_0.9.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_0.9.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_0.9.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_0.9.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_0.9.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_0.9.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_0.9.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_0.9.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_30.0_0.9.eps"
plot "data/performance_posrate_30.0_0.9.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_0.9.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_0.9.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_0.9.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_0.9.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_0.9.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_0.9.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_0.9.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_0.9.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_0.9.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_50.0_0.9.eps"
plot "data/performance_posrate_50.0_0.9.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_0.9.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_0.9.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_0.9.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_0.9.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_0.9.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_0.9.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_0.9.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_0.9.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_0.9.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_0.5_1.0.eps"
plot "data/performance_posrate_0.5_1.0.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_1.0.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_1.0.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_1.0.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_1.0.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_1.0.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_1.0.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_1.0.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_1.0.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_1.0.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_1.0_1.0.eps"
plot "data/performance_posrate_1.0_1.0.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_1.0.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_1.0.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_1.0.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_1.0.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_1.0.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_1.0.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_1.0.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_1.0.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_1.0.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_2.0_1.0.eps"
plot "data/performance_posrate_2.0_1.0.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_1.0.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_1.0.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_1.0.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_1.0.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_1.0.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_1.0.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_1.0.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_1.0.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_1.0.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_3.0_1.0.eps"
plot "data/performance_posrate_3.0_1.0.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_1.0.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_1.0.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_1.0.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_1.0.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_1.0.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_1.0.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_1.0.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_1.0.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_1.0.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_4.0_1.0.eps"
plot "data/performance_posrate_4.0_1.0.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_1.0.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_1.0.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_1.0.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_1.0.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_1.0.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_1.0.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_1.0.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_1.0.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_1.0.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_5.0_1.0.eps"
plot "data/performance_posrate_5.0_1.0.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_1.0.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_1.0.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_1.0.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_1.0.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_1.0.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_1.0.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_1.0.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_1.0.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_1.0.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_10.0_1.0.eps"
plot "data/performance_posrate_10.0_1.0.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_1.0.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_1.0.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_1.0.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_1.0.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_1.0.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_1.0.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_1.0.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_1.0.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_1.0.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_20.0_1.0.eps"
plot "data/performance_posrate_20.0_1.0.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_1.0.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_1.0.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_1.0.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_1.0.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_1.0.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_1.0.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_1.0.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_1.0.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_1.0.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_30.0_1.0.eps"
plot "data/performance_posrate_30.0_1.0.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_1.0.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_1.0.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_1.0.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_1.0.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_1.0.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_1.0.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_1.0.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_1.0.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_1.0.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_50.0_1.0.eps"
plot "data/performance_posrate_50.0_1.0.txt" using 1:8 title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_1.0.txt" using 1:8:9 title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_1.0.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_1.0.txt" using 1:16:17 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_1.0.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_1.0.txt" using 1:24:25 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_1.0.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_1.0.txt" using 1:32:33 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_1.0.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_1.0.txt" using 1:40:41 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'


###########################################################################################
############################## Performance EF1-Score Vs Lambda #############################
###########################################################################################

set size 0.5,0.5


set xrang [0.6:1]
unset logscale x
unset logscale y
#set xtics nomirror rotate by -45
set ylabel "EF1-Score" font "Courier,24"
set xlabel "Value of {/Symbol l}" font "Courier,24"
set xtics (0.6,0.7,0.8,0.9,1.0)

set key top left
set key  reverse Left 
#set ylabel "EF1-Score" font "Courier,22"
unset key

set term postscript eps enhanced color "Courier,19"
set output "plots/ef1_performance_posrate_0.5_Data_10.eps"
plot "data/performance_posrate_0.5_Data_10.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_10.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_0.5_Data_20.eps"
plot "data/performance_posrate_0.5_Data_20.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_20.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_0.5_Data_30.eps"
plot "data/performance_posrate_0.5_Data_30.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_30.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_0.5_Data_50.eps"
plot "data/performance_posrate_0.5_Data_50.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_50.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_0.5_Data_100.eps"
plot "data/performance_posrate_0.5_Data_100.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_100.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_0.5_Data_150.eps"
plot "data/performance_posrate_0.5_Data_150.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_150.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_1.0_Data_10.eps"
plot "data/performance_posrate_1.0_Data_10.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_10.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_1.0_Data_20.eps"
plot "data/performance_posrate_1.0_Data_20.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_20.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_1.0_Data_30.eps"
plot "data/performance_posrate_1.0_Data_30.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_30.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_1.0_Data_50.eps"
plot "data/performance_posrate_1.0_Data_50.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_50.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_1.0_Data_100.eps"
plot "data/performance_posrate_1.0_Data_100.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_100.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_1.0_Data_150.eps"
plot "data/performance_posrate_1.0_Data_150.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_150.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_150.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_2.0_Data_10.eps"
plot "data/performance_posrate_2.0_Data_10.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_10.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_2.0_Data_20.eps"
plot "data/performance_posrate_2.0_Data_20.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_20.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_2.0_Data_30.eps"
plot "data/performance_posrate_2.0_Data_30.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_30.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_2.0_Data_50.eps"
plot "data/performance_posrate_2.0_Data_50.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_50.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_2.0_Data_100.eps"
plot "data/performance_posrate_2.0_Data_100.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_100.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_2.0_Data_150.eps"
plot "data/performance_posrate_2.0_Data_150.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_150.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_3.0_Data_10.eps"
plot "data/performance_posrate_3.0_Data_10.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_10.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_3.0_Data_20.eps"
plot "data/performance_posrate_3.0_Data_20.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_20.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_3.0_Data_30.eps"
plot "data/performance_posrate_3.0_Data_30.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_30.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_3.0_Data_50.eps"
plot "data/performance_posrate_3.0_Data_50.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_50.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_3.0_Data_100.eps"
plot "data/performance_posrate_3.0_Data_100.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_100.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_3.0_Data_150.eps"
plot "data/performance_posrate_3.0_Data_150.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_150.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_4.0_Data_10.eps"
plot "data/performance_posrate_4.0_Data_10.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_10.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_4.0_Data_20.eps"
plot "data/performance_posrate_4.0_Data_20.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_20.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_4.0_Data_30.eps"
plot "data/performance_posrate_4.0_Data_30.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_30.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_4.0_Data_50.eps"
plot "data/performance_posrate_4.0_Data_50.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_50.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_4.0_Data_100.eps"
plot "data/performance_posrate_4.0_Data_100.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_100.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_4.0_Data_150.eps"
plot "data/performance_posrate_4.0_Data_150.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_150.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_5.0_Data_10.eps"
plot "data/performance_posrate_5.0_Data_10.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_10.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_5.0_Data_20.eps"
plot "data/performance_posrate_5.0_Data_20.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_20.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_5.0_Data_30.eps"
plot "data/performance_posrate_5.0_Data_30.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_30.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_5.0_Data_50.eps"
plot "data/performance_posrate_5.0_Data_50.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_50.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_5.0_Data_100.eps"
plot "data/performance_posrate_5.0_Data_100.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_100.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_5.0_Data_150.eps"
plot "data/performance_posrate_5.0_Data_150.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_150.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_10.0_Data_10.eps"
plot "data/performance_posrate_10.0_Data_10.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_10.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_10.0_Data_20.eps"
plot "data/performance_posrate_10.0_Data_20.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_20.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_10.0_Data_30.eps"
plot "data/performance_posrate_10.0_Data_30.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_30.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_10.0_Data_50.eps"
plot "data/performance_posrate_10.0_Data_50.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_50.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_10.0_Data_100.eps"
plot "data/performance_posrate_10.0_Data_100.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_100.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_10.0_Data_150.eps"
plot "data/performance_posrate_10.0_Data_150.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_150.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_150.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_20.0_Data_10.eps"
plot "data/performance_posrate_20.0_Data_10.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_10.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_20.0_Data_20.eps"
plot "data/performance_posrate_20.0_Data_20.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_20.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_20.0_Data_30.eps"
plot "data/performance_posrate_20.0_Data_30.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_30.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_20.0_Data_50.eps"
plot "data/performance_posrate_20.0_Data_50.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_50.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_20.0_Data_100.eps"
plot "data/performance_posrate_20.0_Data_100.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_100.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_20.0_Data_150.eps"
plot "data/performance_posrate_20.0_Data_150.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_150.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_30.0_Data_10.eps"
plot "data/performance_posrate_30.0_Data_10.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_10.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_30.0_Data_20.eps"
plot "data/performance_posrate_30.0_Data_20.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_20.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_30.0_Data_30.eps"
plot "data/performance_posrate_30.0_Data_30.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_30.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_30.0_Data_50.eps"
plot "data/performance_posrate_30.0_Data_50.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_50.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_30.0_Data_100.eps"
plot "data/performance_posrate_30.0_Data_100.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_100.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_30.0_Data_150.eps"
plot "data/performance_posrate_30.0_Data_150.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_150.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_50.0_Data_10.eps"
plot "data/performance_posrate_50.0_Data_10.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_10.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_50.0_Data_20.eps"
plot "data/performance_posrate_50.0_Data_20.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_20.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_50.0_Data_30.eps"
plot "data/performance_posrate_50.0_Data_30.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_30.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_50.0_Data_50.eps"
plot "data/performance_posrate_50.0_Data_50.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_50.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_50.0_Data_100.eps"
plot "data/performance_posrate_50.0_Data_100.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_100.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_posrate_50.0_Data_150.eps"
plot "data/performance_posrate_50.0_Data_150.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_150.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_150.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

###########################################################################################
############################ Performance EF1-Score Vs Rate Pos #############################
###########################################################################################

set size 0.6,0.5


set xrang [0.5:50]
set logscale x
unset logscale y
#set xtics nomirror rotate by -45
set ylabel "EF1-Score" font "Courier,24"
set xlabel "Rate of positive data" font "Courier,24"
set xtics (0.5,5,10,20,50)

set key top left
set key  reverse Left 
#set ylabel "EF1-Score" font "Courier,22"
unset key



set output "plots/ef1_performance_lambda_0.6_Data_10.eps"
plot "data/performance_lambda_0.6_Data_10.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_10.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.7_Data_10.eps"
plot "data/performance_lambda_0.7_Data_10.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_10.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.8_Data_10.eps"
plot "data/performance_lambda_0.8_Data_10.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_10.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.9_Data_10.eps"
plot "data/performance_lambda_0.9_Data_10.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_10.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_1.0_Data_10.eps"
plot "data/performance_lambda_1.0_Data_10.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_10.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.6_Data_20.eps"
plot "data/performance_lambda_0.6_Data_20.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_20.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.7_Data_20.eps"
plot "data/performance_lambda_0.7_Data_20.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_20.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.8_Data_20.eps"
plot "data/performance_lambda_0.8_Data_20.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_20.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.9_Data_20.eps"
plot "data/performance_lambda_0.9_Data_20.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_20.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_1.0_Data_20.eps"
plot "data/performance_lambda_1.0_Data_20.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_20.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.6_Data_30.eps"
plot "data/performance_lambda_0.6_Data_30.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_30.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.7_Data_30.eps"
plot "data/performance_lambda_0.7_Data_30.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_30.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.8_Data_30.eps"
plot "data/performance_lambda_0.8_Data_30.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_30.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.9_Data_30.eps"
plot "data/performance_lambda_0.9_Data_30.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_30.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_1.0_Data_30.eps"
plot "data/performance_lambda_1.0_Data_30.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_30.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.6_Data_50.eps"
plot "data/performance_lambda_0.6_Data_50.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_50.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.7_Data_50.eps"
plot "data/performance_lambda_0.7_Data_50.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_50.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.8_Data_50.eps"
plot "data/performance_lambda_0.8_Data_50.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_50.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.9_Data_50.eps"
plot "data/performance_lambda_0.9_Data_50.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_50.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_1.0_Data_50.eps"
plot "data/performance_lambda_1.0_Data_50.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_50.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.6_Data_100.eps"
plot "data/performance_lambda_0.6_Data_100.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_100.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.7_Data_100.eps"
plot "data/performance_lambda_0.7_Data_100.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_100.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.8_Data_100.eps"
plot "data/performance_lambda_0.8_Data_100.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_100.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.9_Data_100.eps"
plot "data/performance_lambda_0.9_Data_100.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_100.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_1.0_Data_100.eps"
plot "data/performance_lambda_1.0_Data_100.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_100.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.6_Data_150.eps"
plot "data/performance_lambda_0.6_Data_150.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_150.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_150.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.7_Data_150.eps"
plot "data/performance_lambda_0.7_Data_150.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_150.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.8_Data_150.eps"
plot "data/performance_lambda_0.8_Data_150.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_150.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_0.9_Data_150.eps"
plot "data/performance_lambda_0.9_Data_150.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_150.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_150.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/ef1_performance_lambda_1.0_Data_150.eps"
plot "data/performance_lambda_1.0_Data_150.txt" using 1:8 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:8:9 title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:16 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:16:17 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:24 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:24:25 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:32 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:32:33 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:40 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_150.txt" using 1:40:41 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

###########################################################################################
############################ Performance F1-Score Vs#Data #################################
###########################################################################################
set datafile missing "NaN"

set size 0.6,0.5

#set yrang [0:1]

set xrang [10:10000]
#set xtics (10, 20, 30, 50, 70, 100, 150,200,300,400,500)
set xtics (10,100, 1000,10000)
set logscale x
#set xtics nomirror rotate by -45
set ylabel "F1-Score" font "Courier,24"
set xlabel "# data" font "Courier,24"



set key top left
set key  reverse Left 
#set ylabel "F1-Score" font "Courier,22"
unset key

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_0.5_0.6.eps"
plot "data/performance_posrate_0.5_0.6.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_0.6.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_0.6.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_0.6.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_0.6.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_0.6.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_0.6.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_0.6.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_0.6.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_0.6.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_1.0_0.6.eps"
plot "data/performance_posrate_1.0_0.6.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_0.6.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_0.6.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_0.6.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_0.6.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_0.6.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_0.6.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_0.6.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_0.6.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_0.6.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set yrang [0:0.3]
set format x "10^{%L}"
set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_2.0_0.6.eps"
plot "data/performance_posrate_2.0_0.6.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.6.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.6.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.6.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.6.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_0.6.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_0.6.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.6.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.6.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.6.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_3.0_0.6.eps"
plot "data/performance_posrate_3.0_0.6.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_0.6.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_0.6.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_0.6.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_0.6.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_0.6.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_0.6.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_0.6.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_0.6.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_0.6.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_4.0_0.6.eps"
plot "data/performance_posrate_4.0_0.6.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_0.6.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_0.6.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_0.6.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_0.6.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_0.6.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_0.6.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_0.6.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_0.6.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_0.6.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_5.0_0.6.eps"
plot "data/performance_posrate_5.0_0.6.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_0.6.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_0.6.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_0.6.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_0.6.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_0.6.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_0.6.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_0.6.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_0.6.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_0.6.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_10.0_0.6.eps"
plot "data/performance_posrate_10.0_0.6.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_0.6.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_0.6.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_0.6.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_0.6.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_0.6.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_0.6.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_0.6.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_0.6.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_0.6.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_20.0_0.6.eps"
plot "data/performance_posrate_20.0_0.6.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_0.6.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_0.6.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_0.6.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_0.6.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_0.6.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_0.6.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_0.6.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_0.6.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_0.6.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_30.0_0.6.eps"
plot "data/performance_posrate_30.0_0.6.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_0.6.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_0.6.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_0.6.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_0.6.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_0.6.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_0.6.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_0.6.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_0.6.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_0.6.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_50.0_0.6.eps"
plot "data/performance_posrate_50.0_0.6.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_0.6.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_0.6.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_0.6.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_0.6.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_0.6.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_0.6.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_0.6.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_0.6.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_0.6.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_0.5_0.7.eps"
plot "data/performance_posrate_0.5_0.7.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_0.7.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_0.7.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_0.7.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_0.7.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_0.7.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_0.7.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_0.7.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_0.7.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_0.7.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_1.0_0.7.eps"
plot "data/performance_posrate_1.0_0.7.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_0.7.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_0.7.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_0.7.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_0.7.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_0.7.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_0.7.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_0.7.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_0.7.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_0.7.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_2.0_0.7.eps"
plot "data/performance_posrate_2.0_0.7.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.7.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.7.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.7.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.7.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_0.7.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_0.7.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.7.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.7.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.7.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_3.0_0.7.eps"
plot "data/performance_posrate_3.0_0.7.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_0.7.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_0.7.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_0.7.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_0.7.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_0.7.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_0.7.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_0.7.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_0.7.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_0.7.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_4.0_0.7.eps"
plot "data/performance_posrate_4.0_0.7.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_0.7.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_0.7.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_0.7.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_0.7.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_0.7.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_0.7.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_0.7.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_0.7.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_0.7.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_5.0_0.7.eps"
plot "data/performance_posrate_5.0_0.7.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_0.7.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_0.7.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_0.7.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_0.7.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_0.7.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_0.7.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_0.7.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_0.7.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_0.7.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_10.0_0.7.eps"
plot "data/performance_posrate_10.0_0.7.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_0.7.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_0.7.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_0.7.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_0.7.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_0.7.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_0.7.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_0.7.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_0.7.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_0.7.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_20.0_0.7.eps"
plot "data/performance_posrate_20.0_0.7.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_0.7.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_0.7.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_0.7.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_0.7.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_0.7.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_0.7.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_0.7.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_0.7.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_0.7.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_30.0_0.7.eps"
plot "data/performance_posrate_30.0_0.7.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_0.7.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_0.7.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_0.7.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_0.7.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_0.7.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_0.7.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_0.7.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_0.7.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_0.7.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_50.0_0.7.eps"
plot "data/performance_posrate_50.0_0.7.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_0.7.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_0.7.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_0.7.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_0.7.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_0.7.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_0.7.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_0.7.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_0.7.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_0.7.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_0.5_0.8.eps"
plot "data/performance_posrate_0.5_0.8.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_0.8.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_0.8.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_0.8.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_0.8.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_0.8.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_0.8.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_0.8.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_0.8.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_0.8.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_1.0_0.8.eps"
plot "data/performance_posrate_1.0_0.8.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_0.8.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_0.8.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_0.8.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_0.8.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_0.8.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_0.8.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_0.8.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_0.8.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_0.8.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_2.0_0.8.eps"
plot "data/performance_posrate_2.0_0.8.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.8.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.8.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.8.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.8.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_0.8.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_0.8.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.8.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.8.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.8.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_3.0_0.8.eps"
plot "data/performance_posrate_3.0_0.8.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_0.8.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_0.8.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_0.8.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_0.8.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_0.8.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_0.8.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_0.8.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_0.8.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_0.8.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_4.0_0.8.eps"
plot "data/performance_posrate_4.0_0.8.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_0.8.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_0.8.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_0.8.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_0.8.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_0.8.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_0.8.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_0.8.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_0.8.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_0.8.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_5.0_0.8.eps"
plot "data/performance_posrate_5.0_0.8.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_0.8.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_0.8.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_0.8.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_0.8.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_0.8.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_0.8.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_0.8.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_0.8.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_0.8.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_10.0_0.8.eps"
plot "data/performance_posrate_10.0_0.8.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_0.8.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_0.8.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_0.8.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_0.8.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_0.8.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_0.8.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_0.8.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_0.8.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_0.8.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_20.0_0.8.eps"
plot "data/performance_posrate_20.0_0.8.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_0.8.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_0.8.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_0.8.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_0.8.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_0.8.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_0.8.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_0.8.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_0.8.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_0.8.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_30.0_0.8.eps"
plot "data/performance_posrate_30.0_0.8.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_0.8.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_0.8.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_0.8.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_0.8.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_0.8.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_0.8.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_0.8.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_0.8.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_0.8.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_50.0_0.8.eps"
plot "data/performance_posrate_50.0_0.8.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_0.8.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_0.8.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_0.8.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_0.8.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_0.8.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_0.8.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_0.8.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_0.8.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_0.8.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_0.5_0.9.eps"
plot "data/performance_posrate_0.5_0.9.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_0.9.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_0.9.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_0.9.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_0.9.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_0.9.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_0.9.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_0.9.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_0.9.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_0.9.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_1.0_0.9.eps"
plot "data/performance_posrate_1.0_0.9.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_0.9.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_0.9.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_0.9.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_0.9.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_0.9.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_0.9.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_0.9.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_0.9.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_0.9.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set yrang [0:1.0]
set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_2.0_0.9.eps"
plot "data/performance_posrate_2.0_0.9.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_0.9.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_0.9.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_0.9.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_0.9.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_0.9.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_0.9.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_0.9.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_0.9.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_0.9.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_3.0_0.9.eps"
plot "data/performance_posrate_3.0_0.9.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_0.9.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_0.9.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_0.9.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_0.9.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_0.9.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_0.9.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_0.9.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_0.9.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_0.9.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_4.0_0.9.eps"
plot "data/performance_posrate_4.0_0.9.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_0.9.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_0.9.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_0.9.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_0.9.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_0.9.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_0.9.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_0.9.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_0.9.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_0.9.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_5.0_0.9.eps"
plot "data/performance_posrate_5.0_0.9.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_0.9.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_0.9.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_0.9.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_0.9.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_0.9.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_0.9.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_0.9.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_0.9.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_0.9.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_10.0_0.9.eps"
plot "data/performance_posrate_10.0_0.9.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_0.9.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_0.9.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_0.9.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_0.9.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_0.9.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_0.9.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_0.9.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_0.9.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_0.9.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_20.0_0.9.eps"
plot "data/performance_posrate_20.0_0.9.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_0.9.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_0.9.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_0.9.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_0.9.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_0.9.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_0.9.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_0.9.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_0.9.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_0.9.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_30.0_0.9.eps"
plot "data/performance_posrate_30.0_0.9.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_0.9.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_0.9.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_0.9.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_0.9.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_0.9.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_0.9.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_0.9.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_0.9.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_0.9.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_50.0_0.9.eps"
plot "data/performance_posrate_50.0_0.9.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_0.9.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_0.9.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_0.9.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_0.9.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_0.9.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_0.9.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_0.9.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_0.9.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_0.9.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_0.5_1.0.eps"
plot "data/performance_posrate_0.5_1.0.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_0.5_1.0.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_1.0.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_1.0.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_1.0.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_1.0.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_1.0.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_1.0.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_1.0.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_1.0.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_1.0_1.0.eps"
plot "data/performance_posrate_1.0_1.0.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_1.0_1.0.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_1.0.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_1.0.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_1.0.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_1.0.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_1.0.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_1.0.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_1.0.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_1.0.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set yrang [0:1.0]
set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_2.0_1.0.eps"
plot "data/performance_posrate_2.0_1.0.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_2.0_1.0.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_1.0.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_1.0.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_1.0.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_1.0.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_1.0.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_1.0.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_1.0.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_1.0.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_3.0_1.0.eps"
plot "data/performance_posrate_3.0_1.0.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_3.0_1.0.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_1.0.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_1.0.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_1.0.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_1.0.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_1.0.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_1.0.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_1.0.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_1.0.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_4.0_1.0.eps"
plot "data/performance_posrate_4.0_1.0.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_4.0_1.0.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_1.0.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_1.0.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_1.0.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_1.0.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_1.0.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_1.0.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_1.0.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_1.0.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_5.0_1.0.eps"
plot "data/performance_posrate_5.0_1.0.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_5.0_1.0.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_1.0.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_1.0.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_1.0.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_1.0.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_1.0.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_1.0.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_1.0.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_1.0.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_10.0_1.0.eps"
plot "data/performance_posrate_10.0_1.0.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_10.0_1.0.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_1.0.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_1.0.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_1.0.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_1.0.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_1.0.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_1.0.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_1.0.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_1.0.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_20.0_1.0.eps"
plot "data/performance_posrate_20.0_1.0.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_20.0_1.0.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_1.0.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_1.0.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_1.0.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_1.0.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_1.0.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_1.0.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_1.0.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_1.0.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_30.0_1.0.eps"
plot "data/performance_posrate_30.0_1.0.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_30.0_1.0.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_1.0.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_1.0.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_1.0.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_1.0.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_1.0.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_1.0.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_1.0.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_1.0.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_50.0_1.0.eps"
plot "data/performance_posrate_50.0_1.0.txt" using 1:6  title 'Initial'  with  linespoints lw 4 ps 1.95 pt 8 lc 1 ,\
 "data/performance_posrate_50.0_1.0.txt" using 1:6:7  title 'Initial'  with  errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_1.0.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_1.0.txt" using 1:14:15 title 'BPS'  with  errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_1.0.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_1.0.txt" using 1:22:23 title 'Greedy'  with  errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_1.0.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_1.0.txt" using 1:30:31 title 'MILP'  with  errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_1.0.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_1.0.txt" using 1:38:39 title 'K-Means'  with  errorbars pt -1 lw 1 ps 1.95 lc 'red'


###########################################################################################
############################## Performance F1-Score Vs Lambda #############################
###########################################################################################
reset
set size 0.5,0.5
set grid

set xrang [0.6:1]
unset logscale x
unset logscale y
#set xtics nomirror rotate by -45
set ylabel "F1-Score" font "Courier,24"
set xlabel "Value of {/Symbol l}" font "Courier,24"
set xtics (0.6,0.7,0.8,0.9,1.0)

set key top left
set key  reverse Left 
#set ylabel "F1-Score" font "Courier,22"
unset key

set term postscript eps enhanced color "Courier,19"
set output "plots/f1_performance_posrate_0.5_Data_10.eps"
plot "data/performance_posrate_0.5_Data_10.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_10.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_10.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_0.5_Data_20.eps"
plot "data/performance_posrate_0.5_Data_20.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_20.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_20.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_0.5_Data_30.eps"
plot "data/performance_posrate_0.5_Data_30.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_30.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_30.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_0.5_Data_50.eps"
plot "data/performance_posrate_0.5_Data_50.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_50.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_50.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_0.5_Data_100.eps"
plot "data/performance_posrate_0.5_Data_100.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_100.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_100.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_0.5_Data_150.eps"
plot "data/performance_posrate_0.5_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_0.5_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_0.5_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_1.0_Data_10.eps"
plot "data/performance_posrate_1.0_Data_10.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_10.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_10.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_1.0_Data_20.eps"
plot "data/performance_posrate_1.0_Data_20.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_20.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_20.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_1.0_Data_30.eps"
plot "data/performance_posrate_1.0_Data_30.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_30.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_30.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_1.0_Data_50.eps"
plot "data/performance_posrate_1.0_Data_50.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_50.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_50.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_1.0_Data_100.eps"
plot "data/performance_posrate_1.0_Data_100.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_1.0_Data_100.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_1.0_Data_100.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_1.0_Data_150.eps"
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

set output "plots/f1_performance_posrate_2.0_Data_10.eps"
plot "data/performance_posrate_2.0_Data_10.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_10.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_10.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_2.0_Data_20.eps"
plot "data/performance_posrate_2.0_Data_20.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_20.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_20.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_2.0_Data_30.eps"
plot "data/performance_posrate_2.0_Data_30.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_30.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_30.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_2.0_Data_50.eps"
plot "data/performance_posrate_2.0_Data_50.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_50.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_50.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_2.0_Data_100.eps"
plot "data/performance_posrate_2.0_Data_100.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_100.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_100.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_2.0_Data_150.eps"
plot "data/performance_posrate_2.0_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_2.0_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_2.0_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_3.0_Data_10.eps"
plot "data/performance_posrate_3.0_Data_10.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_10.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_10.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_3.0_Data_20.eps"
plot "data/performance_posrate_3.0_Data_20.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_20.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_20.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_3.0_Data_30.eps"
plot "data/performance_posrate_3.0_Data_30.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_30.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_30.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_3.0_Data_50.eps"
plot "data/performance_posrate_3.0_Data_50.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_50.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_50.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_3.0_Data_100.eps"
plot "data/performance_posrate_3.0_Data_100.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_100.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_100.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_3.0_Data_150.eps"
plot "data/performance_posrate_3.0_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_3.0_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_3.0_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_4.0_Data_10.eps"
plot "data/performance_posrate_4.0_Data_10.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_10.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_10.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_4.0_Data_20.eps"
plot "data/performance_posrate_4.0_Data_20.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_20.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_20.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_4.0_Data_30.eps"
plot "data/performance_posrate_4.0_Data_30.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_30.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_30.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_4.0_Data_50.eps"
plot "data/performance_posrate_4.0_Data_50.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_50.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_50.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_4.0_Data_100.eps"
plot "data/performance_posrate_4.0_Data_100.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_100.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_100.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_4.0_Data_150.eps"
plot "data/performance_posrate_4.0_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_4.0_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_4.0_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_5.0_Data_10.eps"
plot "data/performance_posrate_5.0_Data_10.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_10.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_10.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_5.0_Data_20.eps"
plot "data/performance_posrate_5.0_Data_20.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_20.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_20.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_5.0_Data_30.eps"
plot "data/performance_posrate_5.0_Data_30.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_30.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_30.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_5.0_Data_50.eps"
plot "data/performance_posrate_5.0_Data_50.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_50.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_50.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_5.0_Data_100.eps"
plot "data/performance_posrate_5.0_Data_100.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_100.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_100.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_5.0_Data_150.eps"
plot "data/performance_posrate_5.0_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_5.0_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_5.0_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_10.0_Data_10.eps"
plot "data/performance_posrate_10.0_Data_10.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_10.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_10.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_10.0_Data_20.eps"
plot "data/performance_posrate_10.0_Data_20.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_20.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_20.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_10.0_Data_30.eps"
plot "data/performance_posrate_10.0_Data_30.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_30.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_30.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_10.0_Data_50.eps"
plot "data/performance_posrate_10.0_Data_50.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_50.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_50.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_10.0_Data_100.eps"
plot "data/performance_posrate_10.0_Data_100.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_10.0_Data_100.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_10.0_Data_100.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_10.0_Data_150.eps"
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

set output "plots/f1_performance_posrate_20.0_Data_10.eps"
plot "data/performance_posrate_20.0_Data_10.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_10.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_10.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_20.0_Data_20.eps"
plot "data/performance_posrate_20.0_Data_20.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_20.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_20.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_20.0_Data_30.eps"
plot "data/performance_posrate_20.0_Data_30.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_30.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_30.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_20.0_Data_50.eps"
plot "data/performance_posrate_20.0_Data_50.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_50.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_50.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_20.0_Data_100.eps"
plot "data/performance_posrate_20.0_Data_100.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_100.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_100.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_20.0_Data_150.eps"
plot "data/performance_posrate_20.0_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_20.0_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_20.0_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_30.0_Data_10.eps"
plot "data/performance_posrate_30.0_Data_10.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_10.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_10.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_30.0_Data_20.eps"
plot "data/performance_posrate_30.0_Data_20.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_20.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_20.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_30.0_Data_30.eps"
plot "data/performance_posrate_30.0_Data_30.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_30.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_30.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_30.0_Data_50.eps"
plot "data/performance_posrate_30.0_Data_50.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_50.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_50.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_30.0_Data_100.eps"
plot "data/performance_posrate_30.0_Data_100.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_100.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_100.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_30.0_Data_150.eps"
plot "data/performance_posrate_30.0_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_30.0_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_30.0_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_50.0_Data_10.eps"
plot "data/performance_posrate_50.0_Data_10.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_10.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_10.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_50.0_Data_20.eps"
plot "data/performance_posrate_50.0_Data_20.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_20.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_20.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_50.0_Data_30.eps"
plot "data/performance_posrate_50.0_Data_30.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_30.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_30.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_50.0_Data_50.eps"
plot "data/performance_posrate_50.0_Data_50.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_50.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_50.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_50.0_Data_100.eps"
plot "data/performance_posrate_50.0_Data_100.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_posrate_50.0_Data_100.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_posrate_50.0_Data_100.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_posrate_50.0_Data_150.eps"
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

###########################################################################################
############################ Performance F1-Score Vs Rate Pos #############################
###########################################################################################

set size 0.6,0.5


set xrang [0.5:50]
set logscale x
unset logscale y
#set xtics nomirror rotate by -45
set ylabel "F1-Score" font "Courier,24"
set xlabel "Rate of positive data" font "Courier,24"
set xtics (0.5,5,10,20,50)

set key top left
set key  reverse Left 
#set ylabel "F1-Score" font "Courier,22"
unset key



set output "plots/f1_performance_lambda_0.6_Data_10.eps"
plot "data/performance_lambda_0.6_Data_10.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_10.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_10.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.7_Data_10.eps"
plot "data/performance_lambda_0.7_Data_10.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_10.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_10.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.8_Data_10.eps"
plot "data/performance_lambda_0.8_Data_10.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_10.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_10.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.9_Data_10.eps"
plot "data/performance_lambda_0.9_Data_10.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_10.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_10.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_1.0_Data_10.eps"
plot "data/performance_lambda_1.0_Data_10.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_10.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_10.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.6_Data_20.eps"
plot "data/performance_lambda_0.6_Data_20.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_20.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_20.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.7_Data_20.eps"
plot "data/performance_lambda_0.7_Data_20.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_20.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_20.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.8_Data_20.eps"
plot "data/performance_lambda_0.8_Data_20.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_20.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_20.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.9_Data_20.eps"
plot "data/performance_lambda_0.9_Data_20.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_20.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_20.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_1.0_Data_20.eps"
plot "data/performance_lambda_1.0_Data_20.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_20.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_20.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.6_Data_30.eps"
plot "data/performance_lambda_0.6_Data_30.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_30.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_30.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.7_Data_30.eps"
plot "data/performance_lambda_0.7_Data_30.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_30.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_30.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.8_Data_30.eps"
plot "data/performance_lambda_0.8_Data_30.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_30.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_30.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.9_Data_30.eps"
plot "data/performance_lambda_0.9_Data_30.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_30.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_30.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_1.0_Data_30.eps"
plot "data/performance_lambda_1.0_Data_30.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_30.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_30.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.6_Data_50.eps"
plot "data/performance_lambda_0.6_Data_50.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_50.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_50.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.7_Data_50.eps"
plot "data/performance_lambda_0.7_Data_50.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_50.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_50.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.8_Data_50.eps"
plot "data/performance_lambda_0.8_Data_50.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_50.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_50.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.9_Data_50.eps"
plot "data/performance_lambda_0.9_Data_50.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_50.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_50.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_1.0_Data_50.eps"
plot "data/performance_lambda_1.0_Data_50.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_50.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_50.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.6_Data_100.eps"
plot "data/performance_lambda_0.6_Data_100.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.6_Data_100.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.6_Data_100.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.7_Data_100.eps"
plot "data/performance_lambda_0.7_Data_100.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_100.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_100.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.8_Data_100.eps"
plot "data/performance_lambda_0.8_Data_100.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_100.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_100.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.9_Data_100.eps"
plot "data/performance_lambda_0.9_Data_100.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.9_Data_100.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.9_Data_100.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_1.0_Data_100.eps"
plot "data/performance_lambda_1.0_Data_100.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_100.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_100.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set yrang [0:0.8]
set output "plots/f1_performance_lambda_0.6_Data_150.eps"
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

set output "plots/f1_performance_lambda_0.7_Data_150.eps"
plot "data/performance_lambda_0.7_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.7_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.7_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/f1_performance_lambda_0.8_Data_150.eps"
plot "data/performance_lambda_0.8_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_0.8_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_0.8_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set yrang [0:0.8]
set output "plots/f1_performance_lambda_0.9_Data_150.eps"
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

set output "plots/f1_performance_lambda_1.0_Data_150.eps"
plot "data/performance_lambda_1.0_Data_150.txt" using 1:6  title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:6:7  title 'Initial'  with errorbars pt -1 lw 1 ps 1.95 lc 1,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:14 title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:14:15 title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:22 title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:22:23 title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:30 title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:30:31 title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/performance_lambda_1.0_Data_150.txt" using 1:38 title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/performance_lambda_1.0_Data_150.txt" using 1:38:39 title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'


###########################################################################################
################################ Time plots Time Vs #Data  ################################
###########################################################################################

#set key top left
#set key  reverse Left 
#unset key
unset yrang
unset logscale y
set ylabel "Time (seconds)" font "Courier,24"
set xlabel "# data" font "Courier,24"
unset key
#set xtics (10,100,1000,10000)
#set xrang [10:10000]

set xtics (10,100,150)
set xrang [10:150]

set output "plots/time_posrate_0.5_0.6.eps"
plot "data/time_posrate_0.5_0.6.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_0.5_0.6.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_0.5_0.6.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_0.5_0.6.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_0.5_0.6.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_0.5_0.6.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_0.5_0.6.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_0.5_0.6.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_1.0_0.6.eps"
plot "data/time_posrate_1.0_0.6.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_1.0_0.6.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_1.0_0.6.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_1.0_0.6.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_1.0_0.6.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_1.0_0.6.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_1.0_0.6.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_1.0_0.6.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_2.0_0.6.eps"
plot "data/time_posrate_2.0_0.6.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_2.0_0.6.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_2.0_0.6.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_2.0_0.6.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_2.0_0.6.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_2.0_0.6.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_2.0_0.6.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_2.0_0.6.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_3.0_0.6.eps"
plot "data/time_posrate_3.0_0.6.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_3.0_0.6.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_3.0_0.6.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_3.0_0.6.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_3.0_0.6.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_3.0_0.6.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_3.0_0.6.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_3.0_0.6.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_4.0_0.6.eps"
plot "data/time_posrate_4.0_0.6.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_4.0_0.6.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_4.0_0.6.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_4.0_0.6.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_4.0_0.6.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_4.0_0.6.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_4.0_0.6.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_4.0_0.6.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_5.0_0.6.eps"
plot "data/time_posrate_5.0_0.6.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_5.0_0.6.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_5.0_0.6.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_5.0_0.6.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_5.0_0.6.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_5.0_0.6.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_5.0_0.6.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_5.0_0.6.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_10.0_0.6.eps"
plot "data/time_posrate_10.0_0.6.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_10.0_0.6.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_10.0_0.6.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_10.0_0.6.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_10.0_0.6.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_10.0_0.6.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_10.0_0.6.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_10.0_0.6.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_20.0_0.6.eps"
plot "data/time_posrate_20.0_0.6.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_20.0_0.6.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_20.0_0.6.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_20.0_0.6.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_20.0_0.6.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_20.0_0.6.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_20.0_0.6.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_20.0_0.6.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_30.0_0.6.eps"
plot "data/time_posrate_30.0_0.6.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_30.0_0.6.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_30.0_0.6.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_30.0_0.6.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_30.0_0.6.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_30.0_0.6.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_30.0_0.6.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_30.0_0.6.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_50.0_0.6.eps"
plot "data/time_posrate_50.0_0.6.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_50.0_0.6.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_50.0_0.6.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_50.0_0.6.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_50.0_0.6.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_50.0_0.6.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_50.0_0.6.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_50.0_0.6.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_0.5_0.7.eps"
plot "data/time_posrate_0.5_0.7.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_0.5_0.7.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_0.5_0.7.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_0.5_0.7.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_0.5_0.7.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_0.5_0.7.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_0.5_0.7.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_0.5_0.7.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_1.0_0.7.eps"
plot "data/time_posrate_1.0_0.7.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_1.0_0.7.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_1.0_0.7.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_1.0_0.7.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_1.0_0.7.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_1.0_0.7.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_1.0_0.7.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_1.0_0.7.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_2.0_0.7.eps"
plot "data/time_posrate_2.0_0.7.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_2.0_0.7.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_2.0_0.7.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_2.0_0.7.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_2.0_0.7.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_2.0_0.7.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_2.0_0.7.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_2.0_0.7.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_3.0_0.7.eps"
plot "data/time_posrate_3.0_0.7.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_3.0_0.7.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_3.0_0.7.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_3.0_0.7.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_3.0_0.7.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_3.0_0.7.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_3.0_0.7.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_3.0_0.7.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_4.0_0.7.eps"
plot "data/time_posrate_4.0_0.7.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_4.0_0.7.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_4.0_0.7.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_4.0_0.7.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_4.0_0.7.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_4.0_0.7.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_4.0_0.7.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_4.0_0.7.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_5.0_0.7.eps"
plot "data/time_posrate_5.0_0.7.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_5.0_0.7.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_5.0_0.7.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_5.0_0.7.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_5.0_0.7.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_5.0_0.7.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_5.0_0.7.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_5.0_0.7.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_10.0_0.7.eps"
plot "data/time_posrate_10.0_0.7.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_10.0_0.7.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_10.0_0.7.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_10.0_0.7.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_10.0_0.7.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_10.0_0.7.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_10.0_0.7.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_10.0_0.7.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_20.0_0.7.eps"
plot "data/time_posrate_20.0_0.7.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_20.0_0.7.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_20.0_0.7.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_20.0_0.7.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_20.0_0.7.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_20.0_0.7.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_20.0_0.7.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_20.0_0.7.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_30.0_0.7.eps"
plot "data/time_posrate_30.0_0.7.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_30.0_0.7.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_30.0_0.7.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_30.0_0.7.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_30.0_0.7.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_30.0_0.7.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_30.0_0.7.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_30.0_0.7.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_50.0_0.7.eps"
plot "data/time_posrate_50.0_0.7.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_50.0_0.7.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_50.0_0.7.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_50.0_0.7.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_50.0_0.7.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_50.0_0.7.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_50.0_0.7.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_50.0_0.7.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_0.5_0.8.eps"
plot "data/time_posrate_0.5_0.8.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_0.5_0.8.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_0.5_0.8.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_0.5_0.8.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_0.5_0.8.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_0.5_0.8.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_0.5_0.8.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_0.5_0.8.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_1.0_0.8.eps"
plot "data/time_posrate_1.0_0.8.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_1.0_0.8.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_1.0_0.8.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_1.0_0.8.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_1.0_0.8.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_1.0_0.8.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_1.0_0.8.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_1.0_0.8.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_2.0_0.8.eps"
plot "data/time_posrate_2.0_0.8.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_2.0_0.8.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_2.0_0.8.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_2.0_0.8.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_2.0_0.8.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_2.0_0.8.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_2.0_0.8.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_2.0_0.8.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_3.0_0.8.eps"
plot "data/time_posrate_3.0_0.8.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_3.0_0.8.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_3.0_0.8.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_3.0_0.8.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_3.0_0.8.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_3.0_0.8.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_3.0_0.8.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_3.0_0.8.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_4.0_0.8.eps"
plot "data/time_posrate_4.0_0.8.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_4.0_0.8.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_4.0_0.8.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_4.0_0.8.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_4.0_0.8.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_4.0_0.8.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_4.0_0.8.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_4.0_0.8.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_5.0_0.8.eps"
plot "data/time_posrate_5.0_0.8.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_5.0_0.8.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_5.0_0.8.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_5.0_0.8.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_5.0_0.8.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_5.0_0.8.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_5.0_0.8.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_5.0_0.8.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_10.0_0.8.eps"
plot "data/time_posrate_10.0_0.8.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_10.0_0.8.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_10.0_0.8.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_10.0_0.8.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_10.0_0.8.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_10.0_0.8.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_10.0_0.8.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_10.0_0.8.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_20.0_0.8.eps"
plot "data/time_posrate_20.0_0.8.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_20.0_0.8.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_20.0_0.8.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_20.0_0.8.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_20.0_0.8.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_20.0_0.8.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_20.0_0.8.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_20.0_0.8.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_30.0_0.8.eps"
plot "data/time_posrate_30.0_0.8.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_30.0_0.8.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_30.0_0.8.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_30.0_0.8.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_30.0_0.8.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_30.0_0.8.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_30.0_0.8.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_30.0_0.8.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_50.0_0.8.eps"
plot "data/time_posrate_50.0_0.8.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_50.0_0.8.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_50.0_0.8.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_50.0_0.8.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_50.0_0.8.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_50.0_0.8.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_50.0_0.8.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_50.0_0.8.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_0.5_0.9.eps"
plot "data/time_posrate_0.5_0.9.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_0.5_0.9.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_0.5_0.9.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_0.5_0.9.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_0.5_0.9.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_0.5_0.9.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_0.5_0.9.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_0.5_0.9.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_1.0_0.9.eps"
plot "data/time_posrate_1.0_0.9.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_1.0_0.9.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_1.0_0.9.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_1.0_0.9.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_1.0_0.9.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_1.0_0.9.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_1.0_0.9.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_1.0_0.9.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set yrang [0:4]
set output "plots/time_posrate_2.0_0.9.eps"
plot "data/time_posrate_2.0_0.9.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_2.0_0.9.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_2.0_0.9.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_2.0_0.9.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_2.0_0.9.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_2.0_0.9.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_2.0_0.9.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_2.0_0.9.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_3.0_0.9.eps"
plot "data/time_posrate_3.0_0.9.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_3.0_0.9.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_3.0_0.9.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_3.0_0.9.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_3.0_0.9.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_3.0_0.9.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_3.0_0.9.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_3.0_0.9.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_4.0_0.9.eps"
plot "data/time_posrate_4.0_0.9.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_4.0_0.9.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_4.0_0.9.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_4.0_0.9.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_4.0_0.9.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_4.0_0.9.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_4.0_0.9.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_4.0_0.9.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_5.0_0.9.eps"
plot "data/time_posrate_5.0_0.9.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_5.0_0.9.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_5.0_0.9.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_5.0_0.9.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_5.0_0.9.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_5.0_0.9.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_5.0_0.9.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_5.0_0.9.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_10.0_0.9.eps"
plot "data/time_posrate_10.0_0.9.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_10.0_0.9.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_10.0_0.9.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_10.0_0.9.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_10.0_0.9.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_10.0_0.9.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_10.0_0.9.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_10.0_0.9.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_20.0_0.9.eps"
plot "data/time_posrate_20.0_0.9.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_20.0_0.9.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_20.0_0.9.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_20.0_0.9.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_20.0_0.9.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_20.0_0.9.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_20.0_0.9.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_20.0_0.9.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_30.0_0.9.eps"
plot "data/time_posrate_30.0_0.9.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_30.0_0.9.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_30.0_0.9.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_30.0_0.9.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_30.0_0.9.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_30.0_0.9.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_30.0_0.9.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_30.0_0.9.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_50.0_0.9.eps"
plot "data/time_posrate_50.0_0.9.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_50.0_0.9.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_50.0_0.9.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_50.0_0.9.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_50.0_0.9.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_50.0_0.9.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_50.0_0.9.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_50.0_0.9.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_0.5_1.0.eps"
plot "data/time_posrate_0.5_1.0.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_0.5_1.0.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_0.5_1.0.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_0.5_1.0.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_0.5_1.0.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_0.5_1.0.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_0.5_1.0.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_0.5_1.0.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_1.0_1.0.eps"
plot "data/time_posrate_1.0_1.0.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_1.0_1.0.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_1.0_1.0.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_1.0_1.0.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_1.0_1.0.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_1.0_1.0.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_1.0_1.0.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_1.0_1.0.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_2.0_1.0.eps"
plot "data/time_posrate_2.0_1.0.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_2.0_1.0.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_2.0_1.0.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_2.0_1.0.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_2.0_1.0.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_2.0_1.0.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_2.0_1.0.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_2.0_1.0.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_3.0_1.0.eps"
plot "data/time_posrate_3.0_1.0.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_3.0_1.0.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_3.0_1.0.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_3.0_1.0.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_3.0_1.0.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_3.0_1.0.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_3.0_1.0.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_3.0_1.0.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_4.0_1.0.eps"
plot "data/time_posrate_4.0_1.0.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_4.0_1.0.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_4.0_1.0.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_4.0_1.0.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_4.0_1.0.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_4.0_1.0.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_4.0_1.0.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_4.0_1.0.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_5.0_1.0.eps"
plot "data/time_posrate_5.0_1.0.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_5.0_1.0.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_5.0_1.0.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_5.0_1.0.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_5.0_1.0.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_5.0_1.0.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_5.0_1.0.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_5.0_1.0.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_10.0_1.0.eps"
plot "data/time_posrate_10.0_1.0.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_10.0_1.0.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_10.0_1.0.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_10.0_1.0.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_10.0_1.0.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_10.0_1.0.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_10.0_1.0.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_10.0_1.0.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_20.0_1.0.eps"
plot "data/time_posrate_20.0_1.0.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_20.0_1.0.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_20.0_1.0.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_20.0_1.0.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_20.0_1.0.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_20.0_1.0.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_20.0_1.0.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_20.0_1.0.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_30.0_1.0.eps"
plot "data/time_posrate_30.0_1.0.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_30.0_1.0.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_30.0_1.0.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_30.0_1.0.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_30.0_1.0.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_30.0_1.0.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_30.0_1.0.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_30.0_1.0.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'

set output "plots/time_posrate_50.0_1.0.eps"
plot "data/time_posrate_50.0_1.0.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_50.0_1.0.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_50.0_1.0.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_50.0_1.0.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1  lw 1 ps 1.95 lc 3,\
 "data/time_posrate_50.0_1.0.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_50.0_1.0.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
"data/time_posrate_50.0_1.0.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_50.0_1.0.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95 lc 'red'



###########################################################################################
################################### Time Vs Lambda ###################################
###########################################################################################


set size 0.5,0.5


set xrang [0.6:1]
unset logscale x
unset logscale y
#set xtics nomirror rotate by -45
set xlabel "Value of {/Symbol l}" font "Courier,24"
set xtics (0.6,0.7,0.8,0.9,1.0)

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key


set ylabel "Time (seconds)" font "Courier,24"


set output "plots/time_posrate_0.5_Data_10.eps"
plot "data/time_posrate_0.5_Data_10.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_0.5_Data_10.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_0.5_Data_10.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_0.5_Data_10.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_0.5_Data_10.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_0.5_Data_10.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_0.5_Data_10.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_0.5_Data_10.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_0.5_Data_20.eps"
plot "data/time_posrate_0.5_Data_20.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_0.5_Data_20.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_0.5_Data_20.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_0.5_Data_20.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_0.5_Data_20.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_0.5_Data_20.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_0.5_Data_20.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_0.5_Data_20.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_0.5_Data_30.eps"
plot "data/time_posrate_0.5_Data_30.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_0.5_Data_30.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_0.5_Data_30.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_0.5_Data_30.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_0.5_Data_30.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_0.5_Data_30.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_0.5_Data_30.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_0.5_Data_30.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_0.5_Data_50.eps"
plot "data/time_posrate_0.5_Data_50.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_0.5_Data_50.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_0.5_Data_50.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_0.5_Data_50.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_0.5_Data_50.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_0.5_Data_50.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_0.5_Data_50.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_0.5_Data_50.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_0.5_Data_100.eps"
plot "data/time_posrate_0.5_Data_100.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_0.5_Data_100.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_0.5_Data_100.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_0.5_Data_100.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_0.5_Data_100.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_0.5_Data_100.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_0.5_Data_100.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_0.5_Data_100.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_0.5_Data_150.eps"
plot "data/time_posrate_0.5_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_0.5_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_0.5_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_0.5_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_0.5_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_0.5_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_0.5_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_0.5_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_1.0_Data_10.eps"
plot "data/time_posrate_1.0_Data_10.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_1.0_Data_10.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_1.0_Data_10.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_1.0_Data_10.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_1.0_Data_10.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_1.0_Data_10.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_1.0_Data_10.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_1.0_Data_10.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_1.0_Data_20.eps"
plot "data/time_posrate_1.0_Data_20.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_1.0_Data_20.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_1.0_Data_20.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_1.0_Data_20.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_1.0_Data_20.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_1.0_Data_20.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_1.0_Data_20.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_1.0_Data_20.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_1.0_Data_30.eps"
plot "data/time_posrate_1.0_Data_30.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_1.0_Data_30.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_1.0_Data_30.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_1.0_Data_30.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_1.0_Data_30.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_1.0_Data_30.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_1.0_Data_30.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_1.0_Data_30.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_1.0_Data_50.eps"
plot "data/time_posrate_1.0_Data_50.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_1.0_Data_50.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_1.0_Data_50.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_1.0_Data_50.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_1.0_Data_50.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_1.0_Data_50.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_1.0_Data_50.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_1.0_Data_50.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_1.0_Data_100.eps"
plot "data/time_posrate_1.0_Data_100.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_1.0_Data_100.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_1.0_Data_100.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_1.0_Data_100.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_1.0_Data_100.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_1.0_Data_100.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_1.0_Data_100.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_1.0_Data_100.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_1.0_Data_150.eps"
plot "data/time_posrate_1.0_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_1.0_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_1.0_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_1.0_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_1.0_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_1.0_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_1.0_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_1.0_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_2.0_Data_10.eps"
plot "data/time_posrate_2.0_Data_10.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_2.0_Data_10.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_2.0_Data_10.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_2.0_Data_10.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_2.0_Data_10.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_2.0_Data_10.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_2.0_Data_10.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_2.0_Data_10.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_2.0_Data_20.eps"
plot "data/time_posrate_2.0_Data_20.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_2.0_Data_20.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_2.0_Data_20.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_2.0_Data_20.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_2.0_Data_20.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_2.0_Data_20.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_2.0_Data_20.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_2.0_Data_20.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_2.0_Data_30.eps"
plot "data/time_posrate_2.0_Data_30.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_2.0_Data_30.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_2.0_Data_30.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_2.0_Data_30.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_2.0_Data_30.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_2.0_Data_30.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_2.0_Data_30.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_2.0_Data_30.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_2.0_Data_50.eps"
plot "data/time_posrate_2.0_Data_50.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_2.0_Data_50.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_2.0_Data_50.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_2.0_Data_50.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_2.0_Data_50.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_2.0_Data_50.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_2.0_Data_50.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_2.0_Data_50.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_2.0_Data_100.eps"
plot "data/time_posrate_2.0_Data_100.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_2.0_Data_100.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_2.0_Data_100.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_2.0_Data_100.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_2.0_Data_100.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_2.0_Data_100.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_2.0_Data_100.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_2.0_Data_100.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set yrang [0:160]
set output "plots/time_posrate_2.0_Data_150.eps"
plot "data/time_posrate_2.0_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_2.0_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_2.0_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_2.0_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_2.0_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_2.0_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_2.0_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_2.0_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_3.0_Data_10.eps"
plot "data/time_posrate_3.0_Data_10.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_3.0_Data_10.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_3.0_Data_10.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_3.0_Data_10.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_3.0_Data_10.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_3.0_Data_10.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_3.0_Data_10.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_3.0_Data_10.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_3.0_Data_20.eps"
plot "data/time_posrate_3.0_Data_20.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_3.0_Data_20.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_3.0_Data_20.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_3.0_Data_20.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_3.0_Data_20.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_3.0_Data_20.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_3.0_Data_20.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_3.0_Data_20.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_3.0_Data_30.eps"
plot "data/time_posrate_3.0_Data_30.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_3.0_Data_30.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_3.0_Data_30.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_3.0_Data_30.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_3.0_Data_30.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_3.0_Data_30.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_3.0_Data_30.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_3.0_Data_30.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_3.0_Data_50.eps"
plot "data/time_posrate_3.0_Data_50.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_3.0_Data_50.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_3.0_Data_50.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_3.0_Data_50.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_3.0_Data_50.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_3.0_Data_50.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_3.0_Data_50.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_3.0_Data_50.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_3.0_Data_100.eps"
plot "data/time_posrate_3.0_Data_100.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_3.0_Data_100.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_3.0_Data_100.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_3.0_Data_100.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_3.0_Data_100.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_3.0_Data_100.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_3.0_Data_100.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_3.0_Data_100.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_3.0_Data_150.eps"
plot "data/time_posrate_3.0_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_3.0_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_3.0_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_3.0_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_3.0_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_3.0_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_3.0_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_3.0_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_4.0_Data_10.eps"
plot "data/time_posrate_4.0_Data_10.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_4.0_Data_10.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_4.0_Data_10.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_4.0_Data_10.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_4.0_Data_10.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_4.0_Data_10.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_4.0_Data_10.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_4.0_Data_10.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_4.0_Data_20.eps"
plot "data/time_posrate_4.0_Data_20.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_4.0_Data_20.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_4.0_Data_20.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_4.0_Data_20.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_4.0_Data_20.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_4.0_Data_20.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_4.0_Data_20.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_4.0_Data_20.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_4.0_Data_30.eps"
plot "data/time_posrate_4.0_Data_30.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_4.0_Data_30.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_4.0_Data_30.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_4.0_Data_30.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_4.0_Data_30.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_4.0_Data_30.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_4.0_Data_30.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_4.0_Data_30.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_4.0_Data_50.eps"
plot "data/time_posrate_4.0_Data_50.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_4.0_Data_50.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_4.0_Data_50.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_4.0_Data_50.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_4.0_Data_50.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_4.0_Data_50.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_4.0_Data_50.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_4.0_Data_50.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_4.0_Data_100.eps"
plot "data/time_posrate_4.0_Data_100.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_4.0_Data_100.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_4.0_Data_100.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_4.0_Data_100.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_4.0_Data_100.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_4.0_Data_100.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_4.0_Data_100.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_4.0_Data_100.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_4.0_Data_150.eps"
plot "data/time_posrate_4.0_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_4.0_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_4.0_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_4.0_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_4.0_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_4.0_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_4.0_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_4.0_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_5.0_Data_10.eps"
plot "data/time_posrate_5.0_Data_10.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_5.0_Data_10.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_5.0_Data_10.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_5.0_Data_10.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_5.0_Data_10.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_5.0_Data_10.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_5.0_Data_10.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_5.0_Data_10.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_5.0_Data_20.eps"
plot "data/time_posrate_5.0_Data_20.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_5.0_Data_20.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_5.0_Data_20.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_5.0_Data_20.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_5.0_Data_20.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_5.0_Data_20.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_5.0_Data_20.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_5.0_Data_20.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_5.0_Data_30.eps"
plot "data/time_posrate_5.0_Data_30.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_5.0_Data_30.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_5.0_Data_30.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_5.0_Data_30.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_5.0_Data_30.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_5.0_Data_30.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_5.0_Data_30.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_5.0_Data_30.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_5.0_Data_50.eps"
plot "data/time_posrate_5.0_Data_50.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_5.0_Data_50.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_5.0_Data_50.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_5.0_Data_50.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_5.0_Data_50.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_5.0_Data_50.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_5.0_Data_50.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_5.0_Data_50.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_5.0_Data_100.eps"
plot "data/time_posrate_5.0_Data_100.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_5.0_Data_100.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_5.0_Data_100.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_5.0_Data_100.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_5.0_Data_100.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_5.0_Data_100.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_5.0_Data_100.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_5.0_Data_100.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_5.0_Data_150.eps"
plot "data/time_posrate_5.0_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_5.0_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_5.0_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_5.0_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_5.0_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_5.0_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_5.0_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_5.0_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_10.0_Data_10.eps"
plot "data/time_posrate_10.0_Data_10.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_10.0_Data_10.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_10.0_Data_10.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_10.0_Data_10.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_10.0_Data_10.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_10.0_Data_10.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_10.0_Data_10.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_10.0_Data_10.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_10.0_Data_20.eps"
plot "data/time_posrate_10.0_Data_20.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_10.0_Data_20.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_10.0_Data_20.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_10.0_Data_20.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_10.0_Data_20.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_10.0_Data_20.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_10.0_Data_20.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_10.0_Data_20.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_10.0_Data_30.eps"
plot "data/time_posrate_10.0_Data_30.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_10.0_Data_30.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_10.0_Data_30.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_10.0_Data_30.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_10.0_Data_30.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_10.0_Data_30.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_10.0_Data_30.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_10.0_Data_30.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_10.0_Data_50.eps"
plot "data/time_posrate_10.0_Data_50.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_10.0_Data_50.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_10.0_Data_50.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_10.0_Data_50.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_10.0_Data_50.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_10.0_Data_50.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_10.0_Data_50.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_10.0_Data_50.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_10.0_Data_100.eps"
plot "data/time_posrate_10.0_Data_100.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_10.0_Data_100.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_10.0_Data_100.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_10.0_Data_100.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_10.0_Data_100.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_10.0_Data_100.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_10.0_Data_100.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_10.0_Data_100.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_10.0_Data_150.eps"
plot "data/time_posrate_10.0_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_10.0_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_10.0_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_10.0_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_10.0_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_10.0_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_10.0_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_10.0_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_20.0_Data_10.eps"
plot "data/time_posrate_20.0_Data_10.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_20.0_Data_10.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_20.0_Data_10.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_20.0_Data_10.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_20.0_Data_10.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_20.0_Data_10.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_20.0_Data_10.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_20.0_Data_10.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_20.0_Data_20.eps"
plot "data/time_posrate_20.0_Data_20.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_20.0_Data_20.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_20.0_Data_20.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_20.0_Data_20.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_20.0_Data_20.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_20.0_Data_20.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_20.0_Data_20.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_20.0_Data_20.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_20.0_Data_30.eps"
plot "data/time_posrate_20.0_Data_30.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_20.0_Data_30.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_20.0_Data_30.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_20.0_Data_30.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_20.0_Data_30.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_20.0_Data_30.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_20.0_Data_30.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_20.0_Data_30.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_20.0_Data_50.eps"
plot "data/time_posrate_20.0_Data_50.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_20.0_Data_50.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_20.0_Data_50.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_20.0_Data_50.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_20.0_Data_50.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_20.0_Data_50.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_20.0_Data_50.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_20.0_Data_50.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_20.0_Data_100.eps"
plot "data/time_posrate_20.0_Data_100.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_20.0_Data_100.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_20.0_Data_100.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_20.0_Data_100.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_20.0_Data_100.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_20.0_Data_100.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_20.0_Data_100.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_20.0_Data_100.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_20.0_Data_150.eps"
plot "data/time_posrate_20.0_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_20.0_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_20.0_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_20.0_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_20.0_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_20.0_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_20.0_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_20.0_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_30.0_Data_10.eps"
plot "data/time_posrate_30.0_Data_10.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_30.0_Data_10.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_30.0_Data_10.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_30.0_Data_10.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_30.0_Data_10.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_30.0_Data_10.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_30.0_Data_10.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_30.0_Data_10.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_30.0_Data_20.eps"
plot "data/time_posrate_30.0_Data_20.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_30.0_Data_20.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_30.0_Data_20.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_30.0_Data_20.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_30.0_Data_20.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_30.0_Data_20.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_30.0_Data_20.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_30.0_Data_20.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_30.0_Data_30.eps"
plot "data/time_posrate_30.0_Data_30.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_30.0_Data_30.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_30.0_Data_30.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_30.0_Data_30.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_30.0_Data_30.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_30.0_Data_30.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_30.0_Data_30.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_30.0_Data_30.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_30.0_Data_50.eps"
plot "data/time_posrate_30.0_Data_50.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_30.0_Data_50.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_30.0_Data_50.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_30.0_Data_50.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_30.0_Data_50.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_30.0_Data_50.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_30.0_Data_50.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_30.0_Data_50.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_30.0_Data_100.eps"
plot "data/time_posrate_30.0_Data_100.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_30.0_Data_100.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_30.0_Data_100.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_30.0_Data_100.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_30.0_Data_100.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_30.0_Data_100.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_30.0_Data_100.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_30.0_Data_100.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_30.0_Data_150.eps"
plot "data/time_posrate_30.0_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_30.0_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_30.0_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_30.0_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_30.0_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_30.0_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_30.0_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_30.0_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_50.0_Data_10.eps"
plot "data/time_posrate_50.0_Data_10.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_50.0_Data_10.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_50.0_Data_10.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_50.0_Data_10.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_50.0_Data_10.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_50.0_Data_10.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_50.0_Data_10.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_50.0_Data_10.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_50.0_Data_20.eps"
plot "data/time_posrate_50.0_Data_20.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_50.0_Data_20.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_50.0_Data_20.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_50.0_Data_20.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_50.0_Data_20.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_50.0_Data_20.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_50.0_Data_20.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_50.0_Data_20.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_50.0_Data_30.eps"
plot "data/time_posrate_50.0_Data_30.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_50.0_Data_30.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_50.0_Data_30.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_50.0_Data_30.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_50.0_Data_30.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_50.0_Data_30.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_50.0_Data_30.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_50.0_Data_30.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_50.0_Data_50.eps"
plot "data/time_posrate_50.0_Data_50.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_50.0_Data_50.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_50.0_Data_50.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_50.0_Data_50.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_50.0_Data_50.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_50.0_Data_50.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_50.0_Data_50.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_50.0_Data_50.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_50.0_Data_100.eps"
plot "data/time_posrate_50.0_Data_100.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_50.0_Data_100.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_50.0_Data_100.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_50.0_Data_100.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_50.0_Data_100.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_50.0_Data_100.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_50.0_Data_100.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_50.0_Data_100.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'

set output "plots/time_posrate_50.0_Data_150.eps"
plot "data/time_posrate_50.0_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_posrate_50.0_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_posrate_50.0_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_posrate_50.0_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 ps 1.95 lc 3,\
 "data/time_posrate_50.0_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_posrate_50.0_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 ps 1.95 lc 4,\
 "data/time_posrate_50.0_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_posrate_50.0_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 ps 1.95 lc 'red'



###########################################################################################
#################################### Time Vs Rate Pos #####################################
###########################################################################################


set size 0.6,0.5


set xrang [0.5:50]
set logscale x
unset logscale y
#set xtics nomirror rotate by -45
set xlabel "Rate of positive data" font "Courier,24"
set xtics (0.5,5,10,20,50)

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key


set ylabel "Time (seconds)" font "Courier,24"



set output "plots/time_lambda_0.6_Data_10.eps"
plot "data/time_lambda_0.6_Data_10.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.6_Data_10.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.6_Data_10.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.6_Data_10.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.6_Data_10.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.6_Data_10.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.6_Data_10.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.6_Data_10.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.7_Data_10.eps"
plot "data/time_lambda_0.7_Data_10.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.7_Data_10.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.7_Data_10.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.7_Data_10.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.7_Data_10.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.7_Data_10.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.7_Data_10.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.7_Data_10.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.8_Data_10.eps"
plot "data/time_lambda_0.8_Data_10.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.8_Data_10.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.8_Data_10.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.8_Data_10.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.8_Data_10.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.8_Data_10.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.8_Data_10.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.8_Data_10.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.9_Data_10.eps"
plot "data/time_lambda_0.9_Data_10.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.9_Data_10.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.9_Data_10.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.9_Data_10.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.9_Data_10.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.9_Data_10.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.9_Data_10.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.9_Data_10.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_1.0_Data_10.eps"
plot "data/time_lambda_1.0_Data_10.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_1.0_Data_10.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_1.0_Data_10.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_1.0_Data_10.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_1.0_Data_10.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_1.0_Data_10.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_1.0_Data_10.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_1.0_Data_10.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.6_Data_20.eps"
plot "data/time_lambda_0.6_Data_20.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.6_Data_20.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.6_Data_20.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.6_Data_20.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.6_Data_20.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.6_Data_20.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.6_Data_20.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.6_Data_20.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.7_Data_20.eps"
plot "data/time_lambda_0.7_Data_20.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.7_Data_20.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.7_Data_20.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.7_Data_20.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.7_Data_20.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.7_Data_20.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.7_Data_20.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.7_Data_20.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.8_Data_20.eps"
plot "data/time_lambda_0.8_Data_20.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.8_Data_20.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.8_Data_20.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.8_Data_20.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.8_Data_20.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.8_Data_20.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.8_Data_20.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.8_Data_20.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.9_Data_20.eps"
plot "data/time_lambda_0.9_Data_20.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.9_Data_20.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.9_Data_20.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.9_Data_20.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.9_Data_20.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.9_Data_20.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.9_Data_20.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.9_Data_20.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_1.0_Data_20.eps"
plot "data/time_lambda_1.0_Data_20.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_1.0_Data_20.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_1.0_Data_20.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_1.0_Data_20.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_1.0_Data_20.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_1.0_Data_20.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_1.0_Data_20.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_1.0_Data_20.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.6_Data_30.eps"
plot "data/time_lambda_0.6_Data_30.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.6_Data_30.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.6_Data_30.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.6_Data_30.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.6_Data_30.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.6_Data_30.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.6_Data_30.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.6_Data_30.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.7_Data_30.eps"
plot "data/time_lambda_0.7_Data_30.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.7_Data_30.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.7_Data_30.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.7_Data_30.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.7_Data_30.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.7_Data_30.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.7_Data_30.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.7_Data_30.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.8_Data_30.eps"
plot "data/time_lambda_0.8_Data_30.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.8_Data_30.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.8_Data_30.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.8_Data_30.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.8_Data_30.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.8_Data_30.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.8_Data_30.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.8_Data_30.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.9_Data_30.eps"
plot "data/time_lambda_0.9_Data_30.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.9_Data_30.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.9_Data_30.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.9_Data_30.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.9_Data_30.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.9_Data_30.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.9_Data_30.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.9_Data_30.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_1.0_Data_30.eps"
plot "data/time_lambda_1.0_Data_30.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_1.0_Data_30.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_1.0_Data_30.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_1.0_Data_30.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_1.0_Data_30.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_1.0_Data_30.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_1.0_Data_30.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_1.0_Data_30.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.6_Data_50.eps"
plot "data/time_lambda_0.6_Data_50.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.6_Data_50.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.6_Data_50.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.6_Data_50.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.6_Data_50.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.6_Data_50.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.6_Data_50.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.6_Data_50.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.7_Data_50.eps"
plot "data/time_lambda_0.7_Data_50.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.7_Data_50.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.7_Data_50.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.7_Data_50.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.7_Data_50.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.7_Data_50.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.7_Data_50.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.7_Data_50.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.8_Data_50.eps"
plot "data/time_lambda_0.8_Data_50.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.8_Data_50.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.8_Data_50.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.8_Data_50.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.8_Data_50.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.8_Data_50.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.8_Data_50.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.8_Data_50.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.9_Data_50.eps"
plot "data/time_lambda_0.9_Data_50.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.9_Data_50.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.9_Data_50.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.9_Data_50.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.9_Data_50.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.9_Data_50.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.9_Data_50.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.9_Data_50.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_1.0_Data_50.eps"
plot "data/time_lambda_1.0_Data_50.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_1.0_Data_50.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_1.0_Data_50.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_1.0_Data_50.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_1.0_Data_50.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_1.0_Data_50.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_1.0_Data_50.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_1.0_Data_50.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.6_Data_100.eps"
plot "data/time_lambda_0.6_Data_100.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.6_Data_100.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.6_Data_100.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.6_Data_100.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.6_Data_100.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.6_Data_100.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.6_Data_100.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.6_Data_100.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.7_Data_100.eps"
plot "data/time_lambda_0.7_Data_100.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.7_Data_100.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.7_Data_100.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.7_Data_100.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.7_Data_100.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.7_Data_100.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.7_Data_100.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.7_Data_100.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.8_Data_100.eps"
plot "data/time_lambda_0.8_Data_100.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.8_Data_100.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.8_Data_100.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.8_Data_100.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.8_Data_100.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.8_Data_100.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.8_Data_100.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.8_Data_100.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.9_Data_100.eps"
plot "data/time_lambda_0.9_Data_100.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.9_Data_100.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.9_Data_100.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.9_Data_100.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.9_Data_100.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.9_Data_100.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.9_Data_100.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.9_Data_100.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_1.0_Data_100.eps"
plot "data/time_lambda_1.0_Data_100.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_1.0_Data_100.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_1.0_Data_100.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_1.0_Data_100.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_1.0_Data_100.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_1.0_Data_100.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_1.0_Data_100.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_1.0_Data_100.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set yrang [0:600]
set output "plots/time_lambda_0.6_Data_150.eps"
plot "data/time_lambda_0.6_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.6_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.6_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.6_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.6_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.6_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.6_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.6_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.7_Data_150.eps"
plot "data/time_lambda_0.7_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.7_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.7_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.7_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.7_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.7_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.7_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.7_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set yrang [0:1400]
set output "plots/time_lambda_0.8_Data_150.eps"
plot "data/time_lambda_0.8_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.8_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.8_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.8_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.8_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.8_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.8_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.8_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set output "plots/time_lambda_0.9_Data_150.eps"
plot "data/time_lambda_0.9_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_0.9_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_0.9_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_0.9_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_0.9_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_0.9_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_0.9_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_0.9_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'

set yrang [0:3000]
set output "plots/time_lambda_1.0_Data_150.eps"
plot "data/time_lambda_1.0_Data_150.txt" using 1:($2/1000) title 'BPS'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "data/time_lambda_1.0_Data_150.txt" using 1:($2/1000):($3/1000) title 'BPS'  with errorbars pt -1 lw 1 ps 1.95 lc 2,\
 "data/time_lambda_1.0_Data_150.txt" using 1:($4/1000) title 'Greedy'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "data/time_lambda_1.0_Data_150.txt" using 1:($4/1000):($5/1000) title 'Greedy'  with errorbars pt -1 lw 1 ps 1.95 lc 3,\
 "data/time_lambda_1.0_Data_150.txt" using 1:($6/1000) title 'MILP'  with linespoints lw 4 ps 1.95 pt 4 lc 4,\
 "data/time_lambda_1.0_Data_150.txt" using 1:($6/1000):($7/1000) title 'MILP'  with errorbars pt -1 lw 1 ps 1.95 lc 4,\
 "data/time_lambda_1.0_Data_150.txt" using 1:($8/1000) title 'K-Means'  with linespoints lw 4 ps 1.95 pt 12 lc 'red',\
 "data/time_lambda_1.0_Data_150.txt" using 1:($8/1000):($9/1000) title 'K-Means'  with errorbars pt -1 lw 1 ps 1.95  lc 'red'



















