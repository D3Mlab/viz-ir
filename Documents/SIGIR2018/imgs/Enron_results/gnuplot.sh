clear
reset
set encoding iso_8859_1
set grid



###########################################################################################
############################ Performance Precision Vs#Data #################################
###########################################################################################




set size 0.6,0.5

#set yrang [0:1]

set xrang [10:10000]
#set xtics (10, 20, 30, 50, 70, 100, 150,200,300,400,500)
set xtics (10,100, 1000,10000)
set logscale x
set format x "10^{%L}"
#set xtics nomirror rotate by -45
set ylabel "Precision" font "Courier,24"
set xlabel "# data" font "Courier,24"
set term postscript eps enhanced color "Courier,19"



set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key


set output "precision_performance_posrate_0.5_0.6.eps"
plot "AUI4IR_results/performance_posrate_0.5_0.6.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_0.6.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_0.6.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_0.6.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_1.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_1.0_0.6.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_0.6.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_0.6.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_0.6.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_2.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_2.0_0.6.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_0.6.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_0.6.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_0.6.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_3.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_3.0_0.6.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_0.6.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_0.6.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_0.6.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_4.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_4.0_0.6.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_0.6.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_0.6.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_0.6.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_5.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_5.0_0.6.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_0.6.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_0.6.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_0.6.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_10.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_10.0_0.6.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_0.6.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_0.6.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_0.6.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_20.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_20.0_0.6.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_0.6.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_0.6.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_0.6.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_30.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_30.0_0.6.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_0.6.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_0.6.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_0.6.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_50.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_50.0_0.6.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_0.6.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_0.6.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_0.6.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4


set output "precision_performance_posrate_0.5_0.7.eps"
plot "AUI4IR_results/performance_posrate_0.5_0.7.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_0.7.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_0.7.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_0.7.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_1.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_1.0_0.7.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_0.7.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_0.7.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_0.7.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_2.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_2.0_0.7.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_0.7.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_0.7.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_0.7.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_3.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_3.0_0.7.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_0.7.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_0.7.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_0.7.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_4.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_4.0_0.7.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_0.7.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_0.7.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_0.7.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_5.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_5.0_0.7.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_0.7.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_0.7.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_0.7.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_10.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_10.0_0.7.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_0.7.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_0.7.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_0.7.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_20.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_20.0_0.7.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_0.7.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_0.7.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_0.7.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_30.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_30.0_0.7.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_0.7.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_0.7.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_0.7.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_50.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_50.0_0.7.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_0.7.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_0.7.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_0.7.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_0.5_0.8.eps"
plot "AUI4IR_results/performance_posrate_0.5_0.8.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_0.8.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_0.8.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_0.8.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_1.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_1.0_0.8.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_0.8.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_0.8.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_0.8.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_2.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_2.0_0.8.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_0.8.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_0.8.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_0.8.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_3.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_3.0_0.8.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_0.8.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_0.8.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_0.8.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_4.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_4.0_0.8.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_0.8.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_0.8.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_0.8.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_5.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_5.0_0.8.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_0.8.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_0.8.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_0.8.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_10.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_10.0_0.8.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_0.8.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_0.8.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_0.8.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_20.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_20.0_0.8.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_0.8.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_0.8.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_0.8.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_30.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_30.0_0.8.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_0.8.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_0.8.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_0.8.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_50.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_50.0_0.8.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_0.8.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_0.8.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_0.8.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_0.5_0.9.eps"
plot "AUI4IR_results/performance_posrate_0.5_0.9.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_0.9.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_0.9.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_0.9.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_1.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_1.0_0.9.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_0.9.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_0.9.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_0.9.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_2.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_2.0_0.9.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_0.9.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_0.9.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_0.9.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_3.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_3.0_0.9.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_0.9.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_0.9.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_0.9.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_4.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_4.0_0.9.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_0.9.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_0.9.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_0.9.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_5.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_5.0_0.9.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_0.9.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_0.9.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_0.9.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_10.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_10.0_0.9.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_0.9.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_0.9.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_0.9.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_20.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_20.0_0.9.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_0.9.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_0.9.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_0.9.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_30.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_30.0_0.9.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_0.9.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_0.9.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_0.9.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_50.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_50.0_0.9.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_0.9.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_0.9.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_0.9.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_0.5_1.0.eps"
plot "AUI4IR_results/performance_posrate_0.5_1.0.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_1.0.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_1.0.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_1.0.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_1.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_1.0_1.0.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_1.0.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_1.0.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_1.0.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_2.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_2.0_1.0.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_1.0.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_1.0.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_1.0.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_3.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_3.0_1.0.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_1.0.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_1.0.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_1.0.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_4.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_4.0_1.0.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_1.0.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_1.0.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_1.0.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_5.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_5.0_1.0.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_1.0.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_1.0.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_1.0.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_10.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_10.0_1.0.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_1.0.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_1.0.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_1.0.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_20.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_20.0_1.0.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_1.0.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_1.0.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_1.0.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_30.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_30.0_1.0.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_1.0.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_1.0.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_1.0.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_50.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_50.0_1.0.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_1.0.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_1.0.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_1.0.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

 
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
unset format x 


set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key


set output "precision_performance_posrate_0.5_Data_10.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_10.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_10.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_10.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_0.5_Data_20.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_20.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_20.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_20.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_0.5_Data_30.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_30.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_30.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_30.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_0.5_Data_50.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_50.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_50.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_50.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_0.5_Data_100.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_100.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_100.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_100.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_0.5_Data_150.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_150.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_150.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_150.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_1.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_10.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_10.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_10.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_1.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_20.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_20.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_20.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_1.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_30.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_30.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_30.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_1.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_50.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_50.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_50.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_1.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_100.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_100.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_100.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_1.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_150.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_150.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_150.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_2.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_10.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_10.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_10.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_2.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_20.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_20.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_20.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_2.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_30.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_30.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_30.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_2.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_50.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_50.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_50.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_2.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_100.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_100.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_100.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_2.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_150.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_150.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_150.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_3.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_10.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_10.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_10.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_3.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_20.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_20.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_20.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_3.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_30.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_30.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_30.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_3.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_50.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_50.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_50.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_3.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_100.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_100.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_100.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_3.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_150.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_150.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_150.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_4.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_10.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_10.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_10.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_4.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_20.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_20.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_20.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_4.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_30.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_30.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_30.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_4.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_50.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_50.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_50.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_4.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_100.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_100.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_100.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_4.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_150.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_150.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_150.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_5.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_10.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_10.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_10.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_5.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_20.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_20.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_20.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_5.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_30.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_30.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_30.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_5.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_50.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_50.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_50.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_5.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_100.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_100.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_100.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_5.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_150.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_150.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_150.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_10.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_10.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_10.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_10.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_10.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_20.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_20.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_20.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_10.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_30.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_30.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_30.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_10.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_50.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_50.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_50.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_10.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_100.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_100.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_100.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_10.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_150.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_150.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_150.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_20.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_10.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_10.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_10.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_20.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_20.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_20.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_20.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_20.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_30.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_30.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_30.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_20.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_50.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_50.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_50.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_20.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_100.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_100.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_100.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_20.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_150.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_150.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_150.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_30.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_10.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_10.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_10.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_30.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_20.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_20.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_20.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_30.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_30.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_30.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_30.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_30.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_50.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_50.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_50.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_30.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_100.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_100.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_100.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_30.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_150.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_150.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_150.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_50.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_10.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_10.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_10.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_50.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_20.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_20.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_20.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_50.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_30.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_30.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_30.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_50.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_50.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_50.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_50.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_50.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_100.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_100.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_100.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_posrate_50.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_150.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_150.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_150.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4


###########################################################################################
############################ Performance Precision Vs Rate Pos #############################
###########################################################################################
set size 0.6,0.5


set xrang [0.5:50]
set logscale x
unset logscale y
#set xtics nomirror rotate by -45
set ylabel "Precision" font "Courier,24"
set xlabel "Rate of positive data (%)" font "Courier,24"
set xtics (0.5,5,10,20,50)
unset format x 

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key



set output "precision_performance_lambda_0.6_Data_10.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_10.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_10.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_10.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.7_Data_10.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_10.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_10.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_10.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.8_Data_10.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_10.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_10.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_10.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.9_Data_10.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_10.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_10.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_10.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_1.0_Data_10.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_10.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_10.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_10.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_10.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.6_Data_20.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_20.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_20.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_20.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.7_Data_20.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_20.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_20.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_20.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.8_Data_20.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_20.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_20.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_20.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.9_Data_20.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_20.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_20.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_20.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_1.0_Data_20.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_20.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_20.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_20.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_20.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.6_Data_30.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_30.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_30.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_30.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.7_Data_30.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_30.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_30.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_30.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.8_Data_30.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_30.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_30.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_30.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.9_Data_30.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_30.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_30.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_30.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_1.0_Data_30.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_30.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_30.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_30.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_30.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.6_Data_50.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_50.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_50.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_50.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.7_Data_50.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_50.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_50.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_50.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.8_Data_50.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_50.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_50.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_50.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.9_Data_50.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_50.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_50.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_50.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_1.0_Data_50.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_50.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_50.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_50.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_50.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.6_Data_100.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_100.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_100.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_100.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.7_Data_100.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_100.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_100.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_100.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.8_Data_100.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_100.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_100.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_100.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.9_Data_100.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_100.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_100.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_100.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_1.0_Data_100.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_100.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_100.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_100.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_100.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.6_Data_150.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_150.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_150.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_150.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.7_Data_150.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_150.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_150.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_150.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.8_Data_150.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_150.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_150.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_150.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_0.9_Data_150.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_150.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_150.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_150.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "precision_performance_lambda_1.0_Data_150.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_150.txt" using 1:2 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_150.txt" using 1:6 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_150.txt" using 1:10 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_150.txt" using 1:14 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4




###########################################################################################
############################ Performance Recall Vs#Data #################################
###########################################################################################




set size 0.6,0.5

#set yrang [0:1]

set xrang [10:10000]
#set xtics (10, 20, 30, 50, 70, 100, 150,200,300,400,500)
set xtics (10,100, 1000,10000)
set format x "10^{%L}"
set logscale x
#set xtics nomirror rotate by -45
set ylabel "Recall" font "Courier,24"
set xlabel "# data" font "Courier,24"
set term postscript eps enhanced color "Courier,19"



set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key


set output "recall_performance_posrate_0.5_0.6.eps"
plot "AUI4IR_results/performance_posrate_0.5_0.6.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_0.6.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_0.6.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_0.6.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_1.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_1.0_0.6.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_0.6.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_0.6.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_0.6.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_2.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_2.0_0.6.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_0.6.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_0.6.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_0.6.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_3.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_3.0_0.6.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_0.6.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_0.6.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_0.6.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_4.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_4.0_0.6.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_0.6.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_0.6.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_0.6.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_5.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_5.0_0.6.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_0.6.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_0.6.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_0.6.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_10.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_10.0_0.6.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_0.6.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_0.6.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_0.6.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_20.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_20.0_0.6.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_0.6.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_0.6.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_0.6.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_30.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_30.0_0.6.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_0.6.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_0.6.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_0.6.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_50.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_50.0_0.6.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_0.6.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_0.6.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_0.6.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4


set output "recall_performance_posrate_0.5_0.7.eps"
plot "AUI4IR_results/performance_posrate_0.5_0.7.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_0.7.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_0.7.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_0.7.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_1.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_1.0_0.7.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_0.7.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_0.7.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_0.7.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_2.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_2.0_0.7.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_0.7.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_0.7.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_0.7.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_3.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_3.0_0.7.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_0.7.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_0.7.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_0.7.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_4.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_4.0_0.7.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_0.7.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_0.7.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_0.7.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_5.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_5.0_0.7.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_0.7.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_0.7.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_0.7.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_10.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_10.0_0.7.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_0.7.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_0.7.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_0.7.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_20.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_20.0_0.7.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_0.7.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_0.7.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_0.7.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_30.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_30.0_0.7.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_0.7.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_0.7.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_0.7.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_50.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_50.0_0.7.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_0.7.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_0.7.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_0.7.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_0.5_0.8.eps"
plot "AUI4IR_results/performance_posrate_0.5_0.8.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_0.8.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_0.8.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_0.8.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_1.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_1.0_0.8.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_0.8.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_0.8.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_0.8.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_2.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_2.0_0.8.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_0.8.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_0.8.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_0.8.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_3.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_3.0_0.8.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_0.8.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_0.8.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_0.8.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_4.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_4.0_0.8.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_0.8.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_0.8.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_0.8.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_5.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_5.0_0.8.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_0.8.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_0.8.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_0.8.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_10.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_10.0_0.8.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_0.8.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_0.8.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_0.8.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_20.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_20.0_0.8.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_0.8.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_0.8.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_0.8.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_30.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_30.0_0.8.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_0.8.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_0.8.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_0.8.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_50.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_50.0_0.8.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_0.8.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_0.8.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_0.8.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_0.5_0.9.eps"
plot "AUI4IR_results/performance_posrate_0.5_0.9.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_0.9.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_0.9.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_0.9.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_1.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_1.0_0.9.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_0.9.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_0.9.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_0.9.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_2.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_2.0_0.9.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_0.9.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_0.9.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_0.9.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_3.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_3.0_0.9.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_0.9.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_0.9.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_0.9.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_4.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_4.0_0.9.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_0.9.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_0.9.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_0.9.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_5.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_5.0_0.9.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_0.9.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_0.9.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_0.9.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_10.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_10.0_0.9.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_0.9.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_0.9.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_0.9.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_20.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_20.0_0.9.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_0.9.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_0.9.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_0.9.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_30.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_30.0_0.9.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_0.9.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_0.9.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_0.9.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_50.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_50.0_0.9.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_0.9.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_0.9.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_0.9.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_0.5_1.0.eps"
plot "AUI4IR_results/performance_posrate_0.5_1.0.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_1.0.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_1.0.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_1.0.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_1.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_1.0_1.0.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_1.0.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_1.0.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_1.0.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_2.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_2.0_1.0.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_1.0.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_1.0.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_1.0.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_3.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_3.0_1.0.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_1.0.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_1.0.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_1.0.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_4.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_4.0_1.0.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_1.0.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_1.0.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_1.0.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_5.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_5.0_1.0.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_1.0.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_1.0.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_1.0.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_10.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_10.0_1.0.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_1.0.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_1.0.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_1.0.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_20.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_20.0_1.0.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_1.0.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_1.0.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_1.0.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_30.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_30.0_1.0.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_1.0.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_1.0.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_1.0.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_50.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_50.0_1.0.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_1.0.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_1.0.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_1.0.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

 
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
unset format x 

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key


set output "recall_performance_posrate_0.5_Data_10.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_10.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_10.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_10.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_10.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_0.5_Data_20.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_20.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_20.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_20.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_20.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_0.5_Data_30.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_30.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_30.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_30.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_30.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_0.5_Data_50.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_50.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_50.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_50.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_50.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_0.5_Data_100.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_100.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_100.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_100.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_100.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_0.5_Data_150.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_150.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_150.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_150.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_150.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_1.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_10.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_10.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_10.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_10.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_1.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_20.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_20.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_20.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_20.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_1.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_30.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_30.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_30.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_30.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_1.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_50.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_50.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_50.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_50.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_1.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_100.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_100.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_100.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_100.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_1.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_150.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_150.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_150.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_150.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_2.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_10.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_10.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_10.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_10.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_2.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_20.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_20.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_20.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_20.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_2.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_30.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_30.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_30.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_30.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_2.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_50.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_50.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_50.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_50.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_2.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_100.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_100.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_100.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_100.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_2.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_150.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_150.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_150.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_150.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_3.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_10.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_10.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_10.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_10.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_3.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_20.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_20.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_20.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_20.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_3.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_30.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_30.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_30.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_30.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_3.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_50.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_50.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_50.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_50.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_3.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_100.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_100.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_100.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_100.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_3.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_150.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_150.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_150.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_150.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_4.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_10.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_10.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_10.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_10.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_4.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_20.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_20.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_20.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_20.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_4.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_30.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_30.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_30.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_30.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_4.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_50.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_50.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_50.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_50.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_4.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_100.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_100.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_100.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_100.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_4.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_150.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_150.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_150.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_150.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_5.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_10.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_10.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_10.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_10.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_5.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_20.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_20.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_20.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_20.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_5.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_30.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_30.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_30.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_30.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_5.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_50.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_50.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_50.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_50.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_5.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_100.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_100.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_100.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_100.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_5.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_150.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_150.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_150.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_150.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_10.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_10.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_10.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_10.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_10.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_10.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_20.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_20.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_20.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_20.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_10.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_30.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_30.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_30.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_30.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_10.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_50.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_50.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_50.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_50.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_10.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_100.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_100.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_100.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_100.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_10.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_150.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_150.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_150.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_150.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_20.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_10.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_10.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_10.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_10.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_20.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_20.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_20.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_20.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_20.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_20.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_30.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_30.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_30.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_30.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_20.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_50.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_50.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_50.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_50.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_20.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_100.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_100.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_100.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_100.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_20.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_150.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_150.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_150.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_150.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_30.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_10.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_10.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_10.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_10.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_30.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_20.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_20.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_20.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_20.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_30.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_30.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_30.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_30.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_30.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_30.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_50.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_50.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_50.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_50.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_30.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_100.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_100.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_100.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_100.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_30.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_150.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_150.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_150.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_150.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_50.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_10.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_10.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_10.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_10.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_50.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_20.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_20.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_20.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_20.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_50.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_30.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_30.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_30.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_30.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_50.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_50.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_50.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_50.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_50.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_50.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_100.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_100.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_100.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_100.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_posrate_50.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_150.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_150.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_150.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_150.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4


###########################################################################################
############################ Performance Recall Vs Rate Pos #############################
###########################################################################################
set size 0.6,0.5


set xrang [0.5:50]
set logscale x
unset logscale y
#set xtics nomirror rotate by -45
set ylabel "Recall" font "Courier,24"
set xlabel "Rate of positive data (%)" font "Courier,24"
set xtics (0.5,5,10,20,50)
unset format x 

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key



set output "recall_performance_lambda_0.6_Data_10.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_10.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_10.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_10.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_10.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.7_Data_10.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_10.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_10.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_10.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_10.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.8_Data_10.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_10.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_10.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_10.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_10.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.9_Data_10.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_10.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_10.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_10.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_10.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_1.0_Data_10.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_10.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_10.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_10.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_10.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.6_Data_20.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_20.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_20.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_20.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_20.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.7_Data_20.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_20.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_20.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_20.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_20.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.8_Data_20.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_20.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_20.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_20.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_20.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.9_Data_20.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_20.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_20.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_20.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_20.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_1.0_Data_20.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_20.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_20.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_20.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_20.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.6_Data_30.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_30.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_30.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_30.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_30.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.7_Data_30.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_30.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_30.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_30.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_30.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.8_Data_30.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_30.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_30.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_30.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_30.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.9_Data_30.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_30.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_30.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_30.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_30.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_1.0_Data_30.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_30.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_30.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_30.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_30.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.6_Data_50.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_50.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_50.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_50.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_50.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.7_Data_50.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_50.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_50.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_50.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_50.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.8_Data_50.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_50.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_50.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_50.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_50.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.9_Data_50.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_50.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_50.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_50.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_50.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_1.0_Data_50.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_50.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_50.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_50.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_50.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.6_Data_100.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_100.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_100.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_100.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_100.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.7_Data_100.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_100.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_100.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_100.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_100.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.8_Data_100.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_100.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_100.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_100.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_100.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.9_Data_100.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_100.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_100.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_100.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_100.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_1.0_Data_100.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_100.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_100.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_100.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_100.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.6_Data_150.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_150.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_150.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_150.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_150.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.7_Data_150.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_150.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_150.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_150.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_150.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.8_Data_150.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_150.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_150.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_150.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_150.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_0.9_Data_150.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_150.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_150.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_150.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_150.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "recall_performance_lambda_1.0_Data_150.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_150.txt" using 1:3 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_150.txt" using 1:7 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_150.txt" using 1:11 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_150.txt" using 1:15 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4




###########################################################################################
############################ Performance EF1-Score Vs#Data #################################
###########################################################################################




set size 0.6,0.5

#set yrang [0:1]

set xrang [10:10000]
#set xtics (10, 20, 30, 50, 70, 100, 150,200,300,400,500)
set xtics (10,100, 1000,10000)
set format x "10^{%L}"
set logscale x
#set xtics nomirror rotate by -45
set ylabel "EF1-Score" font "Courier,24"
set xlabel "# data" font "Courier,24"
set term postscript eps enhanced color "Courier,19"



set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key


set output "ef1_performance_posrate_0.5_0.6.eps"
plot "AUI4IR_results/performance_posrate_0.5_0.6.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_0.6.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_0.6.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_0.6.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_1.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_1.0_0.6.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_0.6.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_0.6.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_0.6.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_2.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_2.0_0.6.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_0.6.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_0.6.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_0.6.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_3.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_3.0_0.6.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_0.6.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_0.6.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_0.6.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_4.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_4.0_0.6.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_0.6.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_0.6.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_0.6.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_5.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_5.0_0.6.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_0.6.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_0.6.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_0.6.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_10.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_10.0_0.6.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_0.6.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_0.6.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_0.6.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_20.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_20.0_0.6.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_0.6.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_0.6.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_0.6.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_30.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_30.0_0.6.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_0.6.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_0.6.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_0.6.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_50.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_50.0_0.6.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_0.6.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_0.6.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_0.6.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4


set output "ef1_performance_posrate_0.5_0.7.eps"
plot "AUI4IR_results/performance_posrate_0.5_0.7.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_0.7.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_0.7.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_0.7.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_1.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_1.0_0.7.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_0.7.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_0.7.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_0.7.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_2.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_2.0_0.7.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_0.7.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_0.7.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_0.7.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_3.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_3.0_0.7.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_0.7.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_0.7.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_0.7.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_4.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_4.0_0.7.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_0.7.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_0.7.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_0.7.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_5.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_5.0_0.7.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_0.7.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_0.7.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_0.7.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_10.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_10.0_0.7.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_0.7.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_0.7.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_0.7.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_20.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_20.0_0.7.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_0.7.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_0.7.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_0.7.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_30.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_30.0_0.7.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_0.7.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_0.7.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_0.7.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_50.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_50.0_0.7.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_0.7.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_0.7.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_0.7.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_0.5_0.8.eps"
plot "AUI4IR_results/performance_posrate_0.5_0.8.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_0.8.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_0.8.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_0.8.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_1.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_1.0_0.8.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_0.8.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_0.8.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_0.8.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_2.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_2.0_0.8.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_0.8.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_0.8.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_0.8.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_3.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_3.0_0.8.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_0.8.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_0.8.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_0.8.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_4.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_4.0_0.8.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_0.8.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_0.8.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_0.8.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_5.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_5.0_0.8.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_0.8.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_0.8.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_0.8.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_10.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_10.0_0.8.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_0.8.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_0.8.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_0.8.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_20.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_20.0_0.8.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_0.8.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_0.8.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_0.8.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_30.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_30.0_0.8.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_0.8.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_0.8.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_0.8.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_50.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_50.0_0.8.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_0.8.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_0.8.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_0.8.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_0.5_0.9.eps"
plot "AUI4IR_results/performance_posrate_0.5_0.9.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_0.9.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_0.9.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_0.9.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_1.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_1.0_0.9.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_0.9.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_0.9.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_0.9.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_2.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_2.0_0.9.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_0.9.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_0.9.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_0.9.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_3.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_3.0_0.9.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_0.9.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_0.9.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_0.9.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_4.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_4.0_0.9.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_0.9.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_0.9.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_0.9.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_5.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_5.0_0.9.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_0.9.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_0.9.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_0.9.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_10.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_10.0_0.9.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_0.9.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_0.9.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_0.9.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_20.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_20.0_0.9.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_0.9.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_0.9.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_0.9.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_30.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_30.0_0.9.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_0.9.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_0.9.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_0.9.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_50.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_50.0_0.9.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_0.9.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_0.9.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_0.9.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_0.5_1.0.eps"
plot "AUI4IR_results/performance_posrate_0.5_1.0.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_1.0.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_1.0.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_1.0.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_1.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_1.0_1.0.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_1.0.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_1.0.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_1.0.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_2.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_2.0_1.0.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_1.0.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_1.0.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_1.0.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_3.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_3.0_1.0.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_1.0.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_1.0.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_1.0.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_4.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_4.0_1.0.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_1.0.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_1.0.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_1.0.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_5.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_5.0_1.0.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_1.0.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_1.0.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_1.0.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_10.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_10.0_1.0.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_1.0.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_1.0.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_1.0.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_20.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_20.0_1.0.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_1.0.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_1.0.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_1.0.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_30.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_30.0_1.0.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_1.0.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_1.0.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_1.0.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_50.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_50.0_1.0.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_1.0.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_1.0.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_1.0.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

 
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
unset format x 

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key


set output "ef1_performance_posrate_0.5_Data_10.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_10.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_10.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_10.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_10.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_0.5_Data_20.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_20.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_20.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_20.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_20.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_0.5_Data_30.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_30.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_30.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_30.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_30.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_0.5_Data_50.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_50.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_50.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_50.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_50.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_0.5_Data_100.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_100.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_100.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_100.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_100.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_0.5_Data_150.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_150.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_150.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_150.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_150.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_1.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_10.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_10.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_10.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_10.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_1.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_20.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_20.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_20.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_20.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_1.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_30.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_30.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_30.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_30.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_1.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_50.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_50.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_50.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_50.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_1.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_100.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_100.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_100.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_100.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_1.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_150.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_150.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_150.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_150.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_2.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_10.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_10.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_10.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_10.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_2.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_20.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_20.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_20.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_20.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_2.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_30.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_30.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_30.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_30.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_2.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_50.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_50.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_50.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_50.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_2.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_100.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_100.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_100.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_100.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_2.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_150.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_150.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_150.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_150.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_3.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_10.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_10.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_10.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_10.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_3.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_20.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_20.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_20.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_20.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_3.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_30.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_30.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_30.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_30.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_3.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_50.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_50.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_50.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_50.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_3.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_100.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_100.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_100.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_100.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_3.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_150.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_150.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_150.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_150.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_4.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_10.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_10.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_10.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_10.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_4.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_20.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_20.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_20.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_20.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_4.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_30.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_30.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_30.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_30.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_4.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_50.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_50.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_50.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_50.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_4.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_100.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_100.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_100.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_100.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_4.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_150.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_150.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_150.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_150.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_5.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_10.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_10.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_10.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_10.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_5.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_20.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_20.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_20.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_20.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_5.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_30.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_30.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_30.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_30.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_5.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_50.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_50.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_50.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_50.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_5.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_100.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_100.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_100.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_100.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_5.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_150.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_150.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_150.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_150.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_10.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_10.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_10.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_10.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_10.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_10.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_20.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_20.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_20.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_20.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_10.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_30.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_30.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_30.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_30.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_10.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_50.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_50.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_50.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_50.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_10.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_100.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_100.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_100.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_100.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_10.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_150.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_150.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_150.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_150.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_20.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_10.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_10.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_10.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_10.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_20.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_20.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_20.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_20.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_20.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_20.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_30.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_30.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_30.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_30.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_20.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_50.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_50.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_50.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_50.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_20.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_100.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_100.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_100.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_100.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_20.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_150.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_150.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_150.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_150.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_30.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_10.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_10.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_10.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_10.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_30.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_20.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_20.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_20.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_20.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_30.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_30.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_30.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_30.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_30.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_30.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_50.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_50.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_50.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_50.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_30.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_100.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_100.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_100.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_100.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_30.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_150.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_150.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_150.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_150.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_50.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_10.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_10.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_10.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_10.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_50.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_20.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_20.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_20.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_20.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_50.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_30.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_30.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_30.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_30.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_50.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_50.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_50.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_50.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_50.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_50.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_100.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_100.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_100.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_100.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_posrate_50.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_150.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_150.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_150.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_150.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4


###########################################################################################
############################ Performance EF1-Score Vs Rate Pos #############################
###########################################################################################
set size 0.6,0.5


set xrang [0.5:50]
set logscale x
unset logscale y
#set xtics nomirror rotate by -45
set ylabel "EF1-Score" font "Courier,24"
set xlabel "Rate of positive data (%)" font "Courier,24"
set xtics (0.5,5,10,20,50)
unset format x 

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key



set output "ef1_performance_lambda_0.6_Data_10.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_10.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_10.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_10.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_10.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.7_Data_10.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_10.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_10.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_10.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_10.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.8_Data_10.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_10.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_10.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_10.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_10.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.9_Data_10.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_10.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_10.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_10.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_10.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_1.0_Data_10.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_10.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_10.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_10.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_10.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.6_Data_20.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_20.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_20.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_20.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_20.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.7_Data_20.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_20.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_20.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_20.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_20.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.8_Data_20.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_20.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_20.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_20.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_20.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.9_Data_20.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_20.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_20.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_20.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_20.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_1.0_Data_20.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_20.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_20.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_20.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_20.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.6_Data_30.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_30.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_30.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_30.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_30.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.7_Data_30.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_30.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_30.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_30.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_30.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.8_Data_30.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_30.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_30.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_30.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_30.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.9_Data_30.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_30.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_30.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_30.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_30.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_1.0_Data_30.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_30.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_30.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_30.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_30.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.6_Data_50.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_50.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_50.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_50.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_50.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.7_Data_50.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_50.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_50.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_50.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_50.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.8_Data_50.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_50.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_50.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_50.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_50.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.9_Data_50.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_50.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_50.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_50.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_50.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_1.0_Data_50.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_50.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_50.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_50.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_50.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.6_Data_100.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_100.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_100.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_100.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_100.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.7_Data_100.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_100.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_100.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_100.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_100.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.8_Data_100.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_100.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_100.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_100.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_100.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.9_Data_100.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_100.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_100.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_100.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_100.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_1.0_Data_100.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_100.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_100.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_100.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_100.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.6_Data_150.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_150.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_150.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_150.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_150.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.7_Data_150.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_150.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_150.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_150.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_150.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.8_Data_150.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_150.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_150.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_150.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_150.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_0.9_Data_150.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_150.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_150.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_150.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_150.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "ef1_performance_lambda_1.0_Data_150.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_150.txt" using 1:5 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_150.txt" using 1:9 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_150.txt" using 1:13 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_150.txt" using 1:17 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4




###########################################################################################
############################ Performance F1-Score Vs#Data #################################
###########################################################################################




set size 0.6,0.5

#set yrang [0:1]

set xrang [10:10000]
#set xtics (10, 20, 30, 50, 70, 100, 150,200,300,400,500)
set xtics (10,100, 1000,10000)
set format x "10^{%L}"
set logscale x
#set xtics nomirror rotate by -45
set ylabel "F1-Score" font "Courier,24"
set xlabel "# data" font "Courier,24"
set term postscript eps enhanced color "Courier,19"



set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key


set output "f1_performance_posrate_0.5_0.6.eps"
plot "AUI4IR_results/performance_posrate_0.5_0.6.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_0.6.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_0.6.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_0.6.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_1.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_1.0_0.6.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_0.6.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_0.6.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_0.6.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_2.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_2.0_0.6.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_0.6.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_0.6.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_0.6.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_3.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_3.0_0.6.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_0.6.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_0.6.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_0.6.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_4.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_4.0_0.6.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_0.6.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_0.6.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_0.6.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_5.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_5.0_0.6.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_0.6.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_0.6.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_0.6.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_10.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_10.0_0.6.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_0.6.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_0.6.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_0.6.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_20.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_20.0_0.6.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_0.6.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_0.6.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_0.6.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_30.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_30.0_0.6.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_0.6.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_0.6.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_0.6.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_50.0_0.6.eps"
plot "AUI4IR_results/performance_posrate_50.0_0.6.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_0.6.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_0.6.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_0.6.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4


set output "f1_performance_posrate_0.5_0.7.eps"
plot "AUI4IR_results/performance_posrate_0.5_0.7.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_0.7.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_0.7.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_0.7.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_1.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_1.0_0.7.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_0.7.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_0.7.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_0.7.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_2.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_2.0_0.7.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_0.7.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_0.7.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_0.7.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_3.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_3.0_0.7.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_0.7.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_0.7.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_0.7.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_4.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_4.0_0.7.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_0.7.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_0.7.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_0.7.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_5.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_5.0_0.7.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_0.7.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_0.7.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_0.7.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_10.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_10.0_0.7.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_0.7.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_0.7.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_0.7.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_20.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_20.0_0.7.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_0.7.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_0.7.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_0.7.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_30.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_30.0_0.7.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_0.7.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_0.7.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_0.7.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_50.0_0.7.eps"
plot "AUI4IR_results/performance_posrate_50.0_0.7.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_0.7.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_0.7.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_0.7.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_0.5_0.8.eps"
plot "AUI4IR_results/performance_posrate_0.5_0.8.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_0.8.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_0.8.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_0.8.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_1.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_1.0_0.8.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_0.8.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_0.8.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_0.8.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_2.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_2.0_0.8.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_0.8.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_0.8.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_0.8.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_3.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_3.0_0.8.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_0.8.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_0.8.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_0.8.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_4.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_4.0_0.8.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_0.8.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_0.8.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_0.8.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_5.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_5.0_0.8.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_0.8.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_0.8.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_0.8.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_10.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_10.0_0.8.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_0.8.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_0.8.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_0.8.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_20.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_20.0_0.8.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_0.8.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_0.8.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_0.8.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_30.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_30.0_0.8.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_0.8.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_0.8.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_0.8.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_50.0_0.8.eps"
plot "AUI4IR_results/performance_posrate_50.0_0.8.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_0.8.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_0.8.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_0.8.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_0.5_0.9.eps"
plot "AUI4IR_results/performance_posrate_0.5_0.9.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_0.9.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_0.9.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_0.9.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_1.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_1.0_0.9.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_0.9.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_0.9.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_0.9.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_2.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_2.0_0.9.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_0.9.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_0.9.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_0.9.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_3.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_3.0_0.9.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_0.9.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_0.9.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_0.9.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_4.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_4.0_0.9.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_0.9.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_0.9.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_0.9.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_5.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_5.0_0.9.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_0.9.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_0.9.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_0.9.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_10.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_10.0_0.9.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_0.9.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_0.9.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_0.9.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_20.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_20.0_0.9.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_0.9.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_0.9.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_0.9.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_30.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_30.0_0.9.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_0.9.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_0.9.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_0.9.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_50.0_0.9.eps"
plot "AUI4IR_results/performance_posrate_50.0_0.9.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_0.9.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_0.9.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_0.9.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_0.5_1.0.eps"
plot "AUI4IR_results/performance_posrate_0.5_1.0.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_1.0.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_1.0.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_1.0.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_1.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_1.0_1.0.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_1.0.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_1.0.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_1.0.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_2.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_2.0_1.0.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_1.0.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_1.0.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_1.0.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_3.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_3.0_1.0.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_1.0.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_1.0.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_1.0.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_4.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_4.0_1.0.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_1.0.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_1.0.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_1.0.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_5.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_5.0_1.0.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_1.0.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_1.0.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_1.0.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_10.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_10.0_1.0.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_1.0.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_1.0.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_1.0.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_20.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_20.0_1.0.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_1.0.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_1.0.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_1.0.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_30.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_30.0_1.0.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_1.0.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_1.0.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_1.0.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_50.0_1.0.eps"
plot "AUI4IR_results/performance_posrate_50.0_1.0.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_1.0.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_1.0.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_1.0.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

 
###########################################################################################
############################## Performance F1-Score Vs Lambda #############################
###########################################################################################

set size 0.5,0.5


set xrang [0.6:1]
unset logscale x
unset logscale y
#set xtics nomirror rotate by -45
set ylabel "F1-Score" font "Courier,24"
set xlabel "Value of {/Symbol l}" font "Courier,24"
set xtics (0.6,0.7,0.8,0.9,1.0)
unset format x 

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key


set output "f1_performance_posrate_0.5_Data_10.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_10.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_10.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_10.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_0.5_Data_20.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_20.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_20.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_20.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_0.5_Data_30.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_30.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_30.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_30.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_0.5_Data_50.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_50.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_50.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_50.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_0.5_Data_100.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_100.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_100.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_100.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_0.5_Data_150.eps"
plot "AUI4IR_results/performance_posrate_0.5_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_0.5_Data_150.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_0.5_Data_150.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_0.5_Data_150.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_1.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_10.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_10.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_10.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_1.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_20.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_20.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_20.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_1.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_30.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_30.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_30.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_1.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_50.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_50.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_50.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_1.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_100.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_100.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_100.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_1.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_1.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_1.0_Data_150.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_1.0_Data_150.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_1.0_Data_150.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_2.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_10.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_10.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_10.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_2.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_20.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_20.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_20.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_2.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_30.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_30.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_30.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_2.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_50.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_50.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_50.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_2.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_100.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_100.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_100.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_2.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_2.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_2.0_Data_150.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_2.0_Data_150.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_2.0_Data_150.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_3.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_10.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_10.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_10.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_3.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_20.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_20.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_20.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_3.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_30.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_30.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_30.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_3.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_50.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_50.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_50.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_3.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_100.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_100.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_100.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_3.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_3.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_3.0_Data_150.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_3.0_Data_150.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_3.0_Data_150.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_4.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_10.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_10.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_10.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_4.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_20.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_20.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_20.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_4.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_30.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_30.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_30.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_4.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_50.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_50.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_50.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_4.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_100.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_100.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_100.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_4.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_4.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_4.0_Data_150.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_4.0_Data_150.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_4.0_Data_150.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_5.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_10.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_10.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_10.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_5.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_20.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_20.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_20.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_5.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_30.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_30.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_30.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_5.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_50.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_50.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_50.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_5.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_100.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_100.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_100.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_5.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_5.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_5.0_Data_150.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_5.0_Data_150.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_5.0_Data_150.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_10.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_10.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_10.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_10.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_10.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_20.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_20.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_20.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_10.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_30.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_30.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_30.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_10.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_50.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_50.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_50.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_10.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_100.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_100.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_100.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_10.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_10.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_10.0_Data_150.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_10.0_Data_150.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_10.0_Data_150.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_20.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_10.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_10.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_10.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_20.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_20.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_20.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_20.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_20.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_30.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_30.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_30.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_20.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_50.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_50.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_50.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_20.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_100.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_100.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_100.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_20.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_20.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_20.0_Data_150.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_20.0_Data_150.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_20.0_Data_150.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_30.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_10.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_10.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_10.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_30.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_20.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_20.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_20.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_30.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_30.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_30.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_30.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_30.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_50.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_50.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_50.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_30.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_100.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_100.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_100.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_30.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_30.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_30.0_Data_150.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_30.0_Data_150.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_30.0_Data_150.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_50.0_Data_10.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_10.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_10.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_10.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_50.0_Data_20.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_20.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_20.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_20.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_50.0_Data_30.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_30.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_30.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_30.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_50.0_Data_50.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_50.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_50.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_50.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_50.0_Data_100.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_100.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_100.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_100.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_posrate_50.0_Data_150.eps"
plot "AUI4IR_results/performance_posrate_50.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_posrate_50.0_Data_150.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_posrate_50.0_Data_150.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_posrate_50.0_Data_150.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4


###########################################################################################
############################ Performance F1-Score Vs Rate Pos #############################
###########################################################################################
set size 0.6,0.5


set xrang [0.5:50]
set logscale x
unset logscale y
#set xtics nomirror rotate by -45
set ylabel "F1-Score" font "Courier,24"
set xlabel "Rate of positive data (%)" font "Courier,24"
set xtics (0.5,5,10,20,50)
unset format x 

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key



set output "f1_performance_lambda_0.6_Data_10.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_10.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_10.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_10.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.7_Data_10.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_10.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_10.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_10.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.8_Data_10.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_10.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_10.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_10.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.9_Data_10.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_10.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_10.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_10.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_1.0_Data_10.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_10.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_10.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_10.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_10.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.6_Data_20.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_20.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_20.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_20.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.7_Data_20.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_20.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_20.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_20.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.8_Data_20.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_20.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_20.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_20.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.9_Data_20.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_20.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_20.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_20.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_1.0_Data_20.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_20.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_20.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_20.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_20.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.6_Data_30.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_30.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_30.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_30.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.7_Data_30.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_30.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_30.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_30.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.8_Data_30.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_30.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_30.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_30.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.9_Data_30.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_30.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_30.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_30.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_1.0_Data_30.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_30.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_30.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_30.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_30.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.6_Data_50.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_50.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_50.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_50.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.7_Data_50.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_50.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_50.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_50.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.8_Data_50.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_50.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_50.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_50.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.9_Data_50.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_50.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_50.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_50.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_1.0_Data_50.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_50.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_50.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_50.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_50.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.6_Data_100.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_100.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_100.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_100.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.7_Data_100.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_100.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_100.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_100.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.8_Data_100.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_100.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_100.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_100.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.9_Data_100.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_100.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_100.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_100.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_1.0_Data_100.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_100.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_100.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_100.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_100.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.6_Data_150.eps"
plot "AUI4IR_results/performance_lambda_0.6_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.6_Data_150.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.6_Data_150.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.6_Data_150.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.7_Data_150.eps"
plot "AUI4IR_results/performance_lambda_0.7_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.7_Data_150.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.7_Data_150.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.7_Data_150.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.8_Data_150.eps"
plot "AUI4IR_results/performance_lambda_0.8_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.8_Data_150.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.8_Data_150.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.8_Data_150.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_0.9_Data_150.eps"
plot "AUI4IR_results/performance_lambda_0.9_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_0.9_Data_150.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_0.9_Data_150.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_0.9_Data_150.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "f1_performance_lambda_1.0_Data_150.eps"
plot "AUI4IR_results/performance_lambda_1.0_Data_150.txt" using 1:4 title 'Initial'  with linespoints lw 4 ps 1.95 pt 8 lc 1,\
 "AUI4IR_results/performance_lambda_1.0_Data_150.txt" using 1:8 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/performance_lambda_1.0_Data_150.txt" using 1:12 title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/performance_lambda_1.0_Data_150.txt" using 1:16 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4




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
unset format x 

set xtics (10,100,150)
set xrang [10:150]

set output "time_posrate_0.5_0.6.eps"
plot "AUI4IR_results/time_posrate_0.5_0.6.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_0.5_0.6.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_0.5_0.6.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_1.0_0.6.eps"
plot "AUI4IR_results/time_posrate_1.0_0.6.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_1.0_0.6.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_1.0_0.6.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_2.0_0.6.eps"
plot "AUI4IR_results/time_posrate_2.0_0.6.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_2.0_0.6.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_2.0_0.6.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_3.0_0.6.eps"
plot "AUI4IR_results/time_posrate_3.0_0.6.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_3.0_0.6.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_3.0_0.6.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_4.0_0.6.eps"
plot "AUI4IR_results/time_posrate_4.0_0.6.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_4.0_0.6.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_4.0_0.6.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_5.0_0.6.eps"
plot "AUI4IR_results/time_posrate_5.0_0.6.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_5.0_0.6.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_5.0_0.6.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_10.0_0.6.eps"
plot "AUI4IR_results/time_posrate_10.0_0.6.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_10.0_0.6.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_10.0_0.6.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_20.0_0.6.eps"
plot "AUI4IR_results/time_posrate_20.0_0.6.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_20.0_0.6.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_20.0_0.6.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_30.0_0.6.eps"
plot "AUI4IR_results/time_posrate_30.0_0.6.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_30.0_0.6.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_30.0_0.6.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_50.0_0.6.eps"
plot "AUI4IR_results/time_posrate_50.0_0.6.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_50.0_0.6.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_50.0_0.6.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_0.5_0.7.eps"
plot "AUI4IR_results/time_posrate_0.5_0.7.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_0.5_0.7.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_0.5_0.7.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_1.0_0.7.eps"
plot "AUI4IR_results/time_posrate_1.0_0.7.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_1.0_0.7.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_1.0_0.7.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_2.0_0.7.eps"
plot "AUI4IR_results/time_posrate_2.0_0.7.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_2.0_0.7.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_2.0_0.7.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_3.0_0.7.eps"
plot "AUI4IR_results/time_posrate_3.0_0.7.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_3.0_0.7.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_3.0_0.7.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_4.0_0.7.eps"
plot "AUI4IR_results/time_posrate_4.0_0.7.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_4.0_0.7.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_4.0_0.7.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_5.0_0.7.eps"
plot "AUI4IR_results/time_posrate_5.0_0.7.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_5.0_0.7.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_5.0_0.7.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_10.0_0.7.eps"
plot "AUI4IR_results/time_posrate_10.0_0.7.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_10.0_0.7.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_10.0_0.7.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_20.0_0.7.eps"
plot "AUI4IR_results/time_posrate_20.0_0.7.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_20.0_0.7.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_20.0_0.7.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_30.0_0.7.eps"
plot "AUI4IR_results/time_posrate_30.0_0.7.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_30.0_0.7.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_30.0_0.7.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_50.0_0.7.eps"
plot "AUI4IR_results/time_posrate_50.0_0.7.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_50.0_0.7.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_50.0_0.7.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_0.5_0.8.eps"
plot "AUI4IR_results/time_posrate_0.5_0.8.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_0.5_0.8.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_0.5_0.8.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_1.0_0.8.eps"
plot "AUI4IR_results/time_posrate_1.0_0.8.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_1.0_0.8.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_1.0_0.8.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_2.0_0.8.eps"
plot "AUI4IR_results/time_posrate_2.0_0.8.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_2.0_0.8.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_2.0_0.8.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_3.0_0.8.eps"
plot "AUI4IR_results/time_posrate_3.0_0.8.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_3.0_0.8.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_3.0_0.8.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_4.0_0.8.eps"
plot "AUI4IR_results/time_posrate_4.0_0.8.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_4.0_0.8.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_4.0_0.8.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_5.0_0.8.eps"
plot "AUI4IR_results/time_posrate_5.0_0.8.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_5.0_0.8.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_5.0_0.8.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_10.0_0.8.eps"
plot "AUI4IR_results/time_posrate_10.0_0.8.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_10.0_0.8.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_10.0_0.8.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_20.0_0.8.eps"
plot "AUI4IR_results/time_posrate_20.0_0.8.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_20.0_0.8.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_20.0_0.8.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_30.0_0.8.eps"
plot "AUI4IR_results/time_posrate_30.0_0.8.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_30.0_0.8.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_30.0_0.8.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_50.0_0.8.eps"
plot "AUI4IR_results/time_posrate_50.0_0.8.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_50.0_0.8.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_50.0_0.8.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_0.5_0.9.eps"
plot "AUI4IR_results/time_posrate_0.5_0.9.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_0.5_0.9.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_0.5_0.9.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_1.0_0.9.eps"
plot "AUI4IR_results/time_posrate_1.0_0.9.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_1.0_0.9.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_1.0_0.9.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_2.0_0.9.eps"
plot "AUI4IR_results/time_posrate_2.0_0.9.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_2.0_0.9.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_2.0_0.9.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_3.0_0.9.eps"
plot "AUI4IR_results/time_posrate_3.0_0.9.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_3.0_0.9.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_3.0_0.9.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_4.0_0.9.eps"
plot "AUI4IR_results/time_posrate_4.0_0.9.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_4.0_0.9.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_4.0_0.9.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_5.0_0.9.eps"
plot "AUI4IR_results/time_posrate_5.0_0.9.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_5.0_0.9.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_5.0_0.9.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_10.0_0.9.eps"
plot "AUI4IR_results/time_posrate_10.0_0.9.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_10.0_0.9.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_10.0_0.9.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_20.0_0.9.eps"
plot "AUI4IR_results/time_posrate_20.0_0.9.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_20.0_0.9.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_20.0_0.9.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_30.0_0.9.eps"
plot "AUI4IR_results/time_posrate_30.0_0.9.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_30.0_0.9.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_30.0_0.9.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_50.0_0.9.eps"
plot "AUI4IR_results/time_posrate_50.0_0.9.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_50.0_0.9.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_50.0_0.9.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_0.5_1.0.eps"
plot "AUI4IR_results/time_posrate_0.5_1.0.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_0.5_1.0.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_0.5_1.0.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_1.0_1.0.eps"
plot "AUI4IR_results/time_posrate_1.0_1.0.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_1.0_1.0.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_1.0_1.0.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_2.0_1.0.eps"
plot "AUI4IR_results/time_posrate_2.0_1.0.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_2.0_1.0.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_2.0_1.0.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_3.0_1.0.eps"
plot "AUI4IR_results/time_posrate_3.0_1.0.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_3.0_1.0.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_3.0_1.0.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_4.0_1.0.eps"
plot "AUI4IR_results/time_posrate_4.0_1.0.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_4.0_1.0.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_4.0_1.0.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_5.0_1.0.eps"
plot "AUI4IR_results/time_posrate_5.0_1.0.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_5.0_1.0.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_5.0_1.0.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_10.0_1.0.eps"
plot "AUI4IR_results/time_posrate_10.0_1.0.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_10.0_1.0.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_10.0_1.0.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_20.0_1.0.eps"
plot "AUI4IR_results/time_posrate_20.0_1.0.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_20.0_1.0.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_20.0_1.0.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_30.0_1.0.eps"
plot "AUI4IR_results/time_posrate_30.0_1.0.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_30.0_1.0.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_30.0_1.0.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_50.0_1.0.eps"
plot "AUI4IR_results/time_posrate_50.0_1.0.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_50.0_1.0.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_50.0_1.0.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

 







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
unset format x 

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key


set ylabel "Time (seconds)" font "Courier,24"


set output "time_posrate_0.5_Data_10.eps"
plot "AUI4IR_results/time_posrate_0.5_Data_10.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_0.5_Data_10.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_0.5_Data_10.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_0.5_Data_20.eps"
plot "AUI4IR_results/time_posrate_0.5_Data_20.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_0.5_Data_20.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_0.5_Data_20.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_0.5_Data_30.eps"
plot  "AUI4IR_results/time_posrate_0.5_Data_30.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_0.5_Data_30.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_0.5_Data_30.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_0.5_Data_50.eps"
plot "AUI4IR_results/time_posrate_0.5_Data_50.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_0.5_Data_50.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_0.5_Data_50.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_0.5_Data_100.eps"
plot  "AUI4IR_results/time_posrate_0.5_Data_100.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_0.5_Data_100.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_0.5_Data_100.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_0.5_Data_150.eps"
plot "AUI4IR_results/time_posrate_0.5_Data_150.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_0.5_Data_150.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_0.5_Data_150.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_1.0_Data_10.eps"
plot "AUI4IR_results/time_posrate_1.0_Data_10.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_1.0_Data_10.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_1.0_Data_10.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_1.0_Data_20.eps"
plot "AUI4IR_results/time_posrate_1.0_Data_20.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_1.0_Data_20.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_1.0_Data_20.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_1.0_Data_30.eps"
plot "AUI4IR_results/time_posrate_1.0_Data_30.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_1.0_Data_30.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_1.0_Data_30.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_1.0_Data_50.eps"
plot "AUI4IR_results/time_posrate_1.0_Data_50.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_1.0_Data_50.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_1.0_Data_50.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_1.0_Data_100.eps"
plot "AUI4IR_results/time_posrate_1.0_Data_100.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_1.0_Data_100.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_1.0_Data_100.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_1.0_Data_150.eps"
plot "AUI4IR_results/time_posrate_1.0_Data_150.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_1.0_Data_150.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_1.0_Data_150.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_2.0_Data_10.eps"
plot "AUI4IR_results/time_posrate_2.0_Data_10.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_2.0_Data_10.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_2.0_Data_10.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_2.0_Data_20.eps"
plot "AUI4IR_results/time_posrate_2.0_Data_20.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_2.0_Data_20.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_2.0_Data_20.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_2.0_Data_30.eps"
plot "AUI4IR_results/time_posrate_2.0_Data_30.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_2.0_Data_30.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_2.0_Data_30.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_2.0_Data_50.eps"
plot "AUI4IR_results/time_posrate_2.0_Data_50.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_2.0_Data_50.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_2.0_Data_50.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_2.0_Data_100.eps"
plot "AUI4IR_results/time_posrate_2.0_Data_100.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_2.0_Data_100.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_2.0_Data_100.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_2.0_Data_150.eps"
plot "AUI4IR_results/time_posrate_2.0_Data_150.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_2.0_Data_150.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_2.0_Data_150.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_3.0_Data_10.eps"
plot "AUI4IR_results/time_posrate_3.0_Data_10.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_3.0_Data_10.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_3.0_Data_10.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_3.0_Data_20.eps"
plot "AUI4IR_results/time_posrate_3.0_Data_20.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_3.0_Data_20.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_3.0_Data_20.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_3.0_Data_30.eps"
plot "AUI4IR_results/time_posrate_3.0_Data_30.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_3.0_Data_30.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_3.0_Data_30.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_3.0_Data_50.eps"
plot "AUI4IR_results/time_posrate_3.0_Data_50.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_3.0_Data_50.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_3.0_Data_50.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_3.0_Data_100.eps"
plot "AUI4IR_results/time_posrate_3.0_Data_100.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_3.0_Data_100.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_3.0_Data_100.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_3.0_Data_150.eps"
plot "AUI4IR_results/time_posrate_3.0_Data_150.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_3.0_Data_150.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_3.0_Data_150.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_4.0_Data_10.eps"
plot "AUI4IR_results/time_posrate_4.0_Data_10.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_4.0_Data_10.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_4.0_Data_10.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_4.0_Data_20.eps"
plot "AUI4IR_results/time_posrate_4.0_Data_20.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_4.0_Data_20.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_4.0_Data_20.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_4.0_Data_30.eps"
plot "AUI4IR_results/time_posrate_4.0_Data_30.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_4.0_Data_30.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_4.0_Data_30.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_4.0_Data_50.eps"
plot "AUI4IR_results/time_posrate_4.0_Data_50.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_4.0_Data_50.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_4.0_Data_50.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_4.0_Data_100.eps"
plot "AUI4IR_results/time_posrate_4.0_Data_100.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_4.0_Data_100.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_4.0_Data_100.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_4.0_Data_150.eps"
plot "AUI4IR_results/time_posrate_4.0_Data_150.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_4.0_Data_150.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_4.0_Data_150.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_5.0_Data_10.eps"
plot "AUI4IR_results/time_posrate_5.0_Data_10.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_5.0_Data_10.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_5.0_Data_10.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_5.0_Data_20.eps"
plot "AUI4IR_results/time_posrate_5.0_Data_20.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_5.0_Data_20.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_5.0_Data_20.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_5.0_Data_30.eps"
plot "AUI4IR_results/time_posrate_5.0_Data_30.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_5.0_Data_30.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_5.0_Data_30.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_5.0_Data_50.eps"
plot "AUI4IR_results/time_posrate_5.0_Data_50.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_5.0_Data_50.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_5.0_Data_50.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_5.0_Data_100.eps"
plot "AUI4IR_results/time_posrate_5.0_Data_100.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_5.0_Data_100.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_5.0_Data_100.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_5.0_Data_150.eps"
plot "AUI4IR_results/time_posrate_5.0_Data_150.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_5.0_Data_150.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_5.0_Data_150.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_10.0_Data_10.eps"
plot "AUI4IR_results/time_posrate_10.0_Data_10.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_10.0_Data_10.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_10.0_Data_10.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_10.0_Data_20.eps"
plot "AUI4IR_results/time_posrate_10.0_Data_20.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_10.0_Data_20.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_10.0_Data_20.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_10.0_Data_30.eps"
plot "AUI4IR_results/time_posrate_10.0_Data_30.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_10.0_Data_30.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_10.0_Data_30.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_10.0_Data_50.eps"
plot "AUI4IR_results/time_posrate_10.0_Data_50.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_10.0_Data_50.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_10.0_Data_50.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_10.0_Data_100.eps"
plot "AUI4IR_results/time_posrate_10.0_Data_100.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_10.0_Data_100.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_10.0_Data_100.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_10.0_Data_150.eps"
plot "AUI4IR_results/time_posrate_10.0_Data_150.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_10.0_Data_150.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_10.0_Data_150.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_20.0_Data_10.eps"
plot "AUI4IR_results/time_posrate_20.0_Data_10.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_20.0_Data_10.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_20.0_Data_10.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_20.0_Data_20.eps"
plot "AUI4IR_results/time_posrate_20.0_Data_20.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_20.0_Data_20.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_20.0_Data_20.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_20.0_Data_30.eps"
plot "AUI4IR_results/time_posrate_20.0_Data_30.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_20.0_Data_30.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_20.0_Data_30.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_20.0_Data_50.eps"
plot "AUI4IR_results/time_posrate_20.0_Data_50.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_20.0_Data_50.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_20.0_Data_50.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_20.0_Data_100.eps"
plot "AUI4IR_results/time_posrate_20.0_Data_100.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_20.0_Data_100.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_20.0_Data_100.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_20.0_Data_150.eps"
plot "AUI4IR_results/time_posrate_20.0_Data_150.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_20.0_Data_150.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_20.0_Data_150.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_30.0_Data_10.eps"
plot "AUI4IR_results/time_posrate_30.0_Data_10.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_30.0_Data_10.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_30.0_Data_10.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_30.0_Data_20.eps"
plot "AUI4IR_results/time_posrate_30.0_Data_20.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_30.0_Data_20.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_30.0_Data_20.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_30.0_Data_30.eps"
plot "AUI4IR_results/time_posrate_30.0_Data_30.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_30.0_Data_30.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_30.0_Data_30.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_30.0_Data_50.eps"
plot "AUI4IR_results/time_posrate_30.0_Data_50.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_30.0_Data_50.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_30.0_Data_50.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_30.0_Data_100.eps"
plot "AUI4IR_results/time_posrate_30.0_Data_100.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_30.0_Data_100.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_30.0_Data_100.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_30.0_Data_150.eps"
plot "AUI4IR_results/time_posrate_30.0_Data_150.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_30.0_Data_150.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_30.0_Data_150.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_50.0_Data_10.eps"
plot "AUI4IR_results/time_posrate_50.0_Data_10.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_50.0_Data_10.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_50.0_Data_10.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_50.0_Data_20.eps"
plot "AUI4IR_results/time_posrate_50.0_Data_20.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_50.0_Data_20.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_50.0_Data_20.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_50.0_Data_30.eps"
plot "AUI4IR_results/time_posrate_50.0_Data_30.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_50.0_Data_30.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_50.0_Data_30.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_50.0_Data_50.eps"
plot "AUI4IR_results/time_posrate_50.0_Data_50.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_50.0_Data_50.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_50.0_Data_50.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_50.0_Data_100.eps"
plot "AUI4IR_results/time_posrate_50.0_Data_100.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_50.0_Data_100.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_50.0_Data_100.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_posrate_50.0_Data_150.eps"
plot "AUI4IR_results/time_posrate_50.0_Data_150.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_posrate_50.0_Data_150.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_posrate_50.0_Data_150.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4



###########################################################################################
#################################### Time Vs Rate Pos #####################################
###########################################################################################


set size 0.6,0.5


set xrang [0.5:50]
set logscale x
unset logscale y
#set xtics nomirror rotate by -45
set xlabel "Rate of positive data (%)" font "Courier,24"
set xtics (0.5,5,10,20,50)
unset format x 

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key


set ylabel "Time (seconds)" font "Courier,24"



set output "time_lambda_0.6_Data_10.eps"
plot "AUI4IR_results/time_lambda_0.6_Data_10.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.6_Data_10.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.6_Data_10.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.7_Data_10.eps"
plot "AUI4IR_results/time_lambda_0.7_Data_10.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.7_Data_10.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.7_Data_10.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.8_Data_10.eps"
plot "AUI4IR_results/time_lambda_0.8_Data_10.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.8_Data_10.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.8_Data_10.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.9_Data_10.eps"
plot "AUI4IR_results/time_lambda_0.9_Data_10.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.9_Data_10.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.9_Data_10.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_1.0_Data_10.eps"
plot "AUI4IR_results/time_lambda_1.0_Data_10.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_1.0_Data_10.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_1.0_Data_10.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.6_Data_20.eps"
plot "AUI4IR_results/time_lambda_0.6_Data_20.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.6_Data_20.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.6_Data_20.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.7_Data_20.eps"
plot "AUI4IR_results/time_lambda_0.7_Data_20.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.7_Data_20.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.7_Data_20.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.8_Data_20.eps"
plot "AUI4IR_results/time_lambda_0.8_Data_20.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.8_Data_20.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.8_Data_20.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.9_Data_20.eps"
plot "AUI4IR_results/time_lambda_0.9_Data_20.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.9_Data_20.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.9_Data_20.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_1.0_Data_20.eps"
plot "AUI4IR_results/time_lambda_1.0_Data_20.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_1.0_Data_20.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_1.0_Data_20.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.6_Data_30.eps"
plot "AUI4IR_results/time_lambda_0.6_Data_30.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.6_Data_30.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.6_Data_30.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.7_Data_30.eps"
plot "AUI4IR_results/time_lambda_0.7_Data_30.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.7_Data_30.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.7_Data_30.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.8_Data_30.eps"
plot "AUI4IR_results/time_lambda_0.8_Data_30.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.8_Data_30.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.8_Data_30.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.9_Data_30.eps"
plot "AUI4IR_results/time_lambda_0.9_Data_30.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.9_Data_30.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.9_Data_30.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_1.0_Data_30.eps"
plot "AUI4IR_results/time_lambda_1.0_Data_30.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_1.0_Data_30.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_1.0_Data_30.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.6_Data_50.eps"
plot "AUI4IR_results/time_lambda_0.6_Data_50.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.6_Data_50.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.6_Data_50.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.7_Data_50.eps"
plot "AUI4IR_results/time_lambda_0.7_Data_50.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.7_Data_50.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.7_Data_50.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.8_Data_50.eps"
plot "AUI4IR_results/time_lambda_0.8_Data_50.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.8_Data_50.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.8_Data_50.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.9_Data_50.eps"
plot "AUI4IR_results/time_lambda_0.9_Data_50.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.9_Data_50.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.9_Data_50.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_1.0_Data_50.eps"
plot "AUI4IR_results/time_lambda_1.0_Data_50.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_1.0_Data_50.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_1.0_Data_50.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.6_Data_100.eps"
plot "AUI4IR_results/time_lambda_0.6_Data_100.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.6_Data_100.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.6_Data_100.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.7_Data_100.eps"
plot "AUI4IR_results/time_lambda_0.7_Data_100.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.7_Data_100.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.7_Data_100.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.8_Data_100.eps"
plot "AUI4IR_results/time_lambda_0.8_Data_100.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.8_Data_100.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.8_Data_100.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.9_Data_100.eps"
plot "AUI4IR_results/time_lambda_0.9_Data_100.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.9_Data_100.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.9_Data_100.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_1.0_Data_100.eps"
plot "AUI4IR_results/time_lambda_1.0_Data_100.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_1.0_Data_100.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_1.0_Data_100.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.6_Data_150.eps"
plot "AUI4IR_results/time_lambda_0.6_Data_150.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.6_Data_150.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.6_Data_150.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.7_Data_150.eps"
plot "AUI4IR_results/time_lambda_0.7_Data_150.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.7_Data_150.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.7_Data_150.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.8_Data_150.eps"
plot "AUI4IR_results/time_lambda_0.8_Data_150.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.8_Data_150.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.8_Data_150.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_0.9_Data_150.eps"
plot "AUI4IR_results/time_lambda_0.9_Data_150.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_0.9_Data_150.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_0.9_Data_150.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4

set output "time_lambda_1.0_Data_150.eps"
plot "AUI4IR_results/time_lambda_1.0_Data_150.txt" using 1:($2/1000) title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/time_lambda_1.0_Data_150.txt" using 1:($3/1000) title 'Greedy Merge'  with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/time_lambda_1.0_Data_150.txt" using 1:($4/1000) title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4



###########################################################################################
########################## Performance scatter_plot_EF1.vs.F1 #############################
###########################################################################################


clear
reset
set encoding iso_8859_1
set grid


set size 0.6,0.7

#set yrang [0:1]

set xrang [0:1]
#set xtics (10, 20, 30, 50, 70, 100, 150,200,300,400,500)
#set xtics (10,100, 1000,10000)
#set xtics nomirror rotate by -45
set ylabel "EF1-Score" font "Courier,24"
set xlabel "F1-Score" font "Courier,24"
set term postscript eps enhanced color "Courier,19"



f1(x) = m11*x + b1
fit f1(x) "AUI4IR_results/scatter_plot_lambda_0.9.txt" using 1:2 via m11,b1

f2(x) = m21*x + b2
fit f2(x) "AUI4IR_results/scatter_plot_lambda_0.8.txt" using 1:2 via m21,b2

f3(x) = m31*x + b3
fit f3(x) "AUI4IR_results/scatter_plot_lambda_0.7.txt" using 1:2 via m31,b3

f4(x) = m41*x + b4
fit f4(x) "AUI4IR_results/scatter_plot_lambda_0.6.txt" using 1:2 via m41,b4

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
#unset key


set output "scatter_plot_EF1.vs.F1.eps"
plot "AUI4IR_results/scatter_plot_lambda_1.0.txt" using 1:2 title '{/Symbol l}=1.0'  with points lw 1 ps 0.5 pt 1 lc 1,\
 "AUI4IR_results/scatter_plot_lambda_0.9.txt" using 1:2 title '{/Symbol l}=0.9'  with points lw 1 ps 0.5 pt 2 lc 2,\
 f1(x) notitle lw 2  lc 2,\
 "AUI4IR_results/scatter_plot_lambda_0.8.txt" using 1:2 title '{/Symbol l}=0.8'  with points lw 1 ps 0.5 pt 3 lc 3,\
  f2(x) notitle lw 2  lc 3,\
"AUI4IR_results/scatter_plot_lambda_0.7.txt" using 1:2 title '{/Symbol l}=0.7'  with points lw 1 ps 0.5 pt 4 lc 4,\
  f3(x) notitle lw 2  lc 4,\
"AUI4IR_results/scatter_plot_lambda_0.6.txt" using 1:2 title '{/Symbol l}=0.6'  with points lw 1 ps 0.5 pt 7 lc 5,\
 f4(x) notitle lw 2  lc 5


###########################################################################################
########################## Performance boxplot_plot_EF1.vs.F1 #############################
###########################################################################################

reset
clear
set boxwidth 0.5 absolute
set style fill   solid 0.25 border lt -1
set style fill solid 0.75 border lt -1
unset key
set grid
set pointsize 0.5
set size 0.75,0.55
set ylabel "Squared Error" font "Courier,24"
set style data boxplot

set border 4095
set key left
set key  reverse Left 

#set bmargin 3
#set yrange [0:450]
set xtics   ("{/Symbol l}=0.9" 1,"{/Symbol l}=0.8" 2,"{/Symbol l}=0.7" 3,"{/Symbol l}=0.6" 4)
set term postscript eps enhanced color "Courier,24"
set output "boxplot_EF1.vs.F1.eps" 
plot 'AUI4IR_results/scatter_plot_lambda_0.9.txt' using (1):3 lc 1 lw 3  notitle ,\
'AUI4IR_results/scatter_plot_lambda_0.8.txt' using (2):3 lc 2 lw 3 notitle,\
'AUI4IR_results/scatter_plot_lambda_0.7.txt' using (3):3 lc 3 lw 3 notitle,\
'AUI4IR_results/scatter_plot_lambda_0.6.txt' using (4):3 lc 4 lw 3 notitle,\

###########################################################################################
########################## Performance scatter_plot_EF1.vs.F1 #############################
###########################################################################################




clear
reset
set encoding iso_8859_1
set grid


set size 1.4,0.65

#set yrang [0:1]

set xrang [0:1]
set yrang [0:1]
#set xtics (10, 20, 30, 50, 70, 100, 150,200,300,400,500)
set xtics (0,0.3,0.6)
set ytics (0,0.2, 0.5,0.8,1.0)
#set xtics nomirror rotate by -45
set xlabel "F1-Score" font "Courier,24"

set xtics (0,0.2,0.4,0.6,0.8,1.0)  rotate by 90 right font "Courier,18"


f1(x) = m11*x + b1
fit f1(x) "AUI4IR_results/scatter_plot_lambda_0.9.txt" using 1:2 via m11,b1

f2(x) = m21*x + b2
fit f2(x) "AUI4IR_results/scatter_plot_lambda_0.8.txt" using 1:2 via m21,b2

f3(x) = m31*x + b3
fit f3(x) "AUI4IR_results/scatter_plot_lambda_0.7.txt" using 1:2 via m31,b3

f4(x) = m41*x + b4
fit f4(x) "AUI4IR_results/scatter_plot_lambda_0.6.txt" using 1:2 via m41,b4

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
#unset key

set tmargin 1.94

set term postscript eps enhanced color "Courier,24"
set output "scatter_plot_EF1.vs.F1.eps"

set multiplot layout 1,5

set title "{/Symbol l}=0.6"  font "Courier,32" 
set size 0.45,0.6
set origin 0,0
set ylabel "EF1-Score" font "Courier,24"
set label 1 at 0.05, 0.89  "RMSE=0.0633" tc "black"
set label 2 at 0.25, 0.09  "R^2=0.98" tc "black"
#set output "scatter_plot_EF1.vs.F1_lambda_0.6.eps"
plot "AUI4IR_results/scatter_plot_lambda_0.6.txt" using 1:2 notitle '{/Symbol l}=0.6'  with points lw 1  ps 0.65 pt 7 lc 7,\
 f4(x) notitle lw 7  lc 7,\
 x notitle lc 'black'

unset ylabel 
set format y ""


set title "{/Symbol l}=0.7"
set size 0.34,0.6
set origin 0.36,0
set label 1 at 0.05, 0.89  "RMSE=0.0358" tc "black"
set label 2 at 0.25, 0.09  "R^2=0.975" tc "black"
#set output "scatter_plot_EF1.vs.F1_lambda_0.7.eps"
plot "AUI4IR_results/scatter_plot_lambda_0.7.txt" using 1:2 notitle '{/Symbol l}=0.7'  with points lw 1  ps 0.65 pt 7 lc 4,\
  f3(x) notitle lw 7  lc 4,\
 x notitle lc 'black'

set title "{/Symbol l}=0.8"
set size 0.34,0.6
set origin 0.61,0
set label 1 at 0.05, 0.89  "RMSE=0.0183" tc "black"
set label 2 at 0.25, 0.09  "R^2=0.937" tc "black"
#set output "scatter_plot_EF1.vs.F1_lambda_0.8.eps"
plot  "AUI4IR_results/scatter_plot_lambda_0.8.txt" using 1:2 notitle '{/Symbol l}=0.8'  with points lw 1  ps 0.65 pt 7 lc 6,\
  f2(x) notitle lw 7  lc 6,\
 x notitle lc 'black'

set title "{/Symbol l}=0.9"
set size 0.34,0.6
set origin 0.86,0
set label 1 at 0.05, 0.89  "RMSE=0.0166" tc "black"
set label 2 at 0.25, 0.09  "R^2=0.899" tc "black"
#set output "scatter_plot_EF1.vs.F1_lambda_0.9.eps"
plot  "AUI4IR_results/scatter_plot_lambda_0.9.txt" using 1:2 notitle '{/Symbol l}=0.9'  with points lw 1  ps 0.65 pt 7 lc 2,\
 f1(x) notitle lw 7  lc 2,\
 x notitle lc 'black'


set title "{/Symbol l}=1.0"
set size 0.34,0.6
set origin 1.11,0
set label 1 at 0.05, 0.89  "RMSE=0.0000" tc "black"
set label 2 at 0.25, 0.09  "R^2=1.0" tc "black"
#set output "scatter_plot_EF1.vs.F1_lambda_1.0.eps"
plot "AUI4IR_results/scatter_plot_lambda_1.0.txt" using 1:2 notitle '{/Symbol l}=1.0'  with points lw 1  ps 0.65 pt 7 lc 1,\
 x notitle lc 'black'


unset multiplot









###########################################################################################
########################## Performance scatter_plot2_EF1.vs.F1 #############################
###########################################################################################


clear
reset
set encoding iso_8859_1
set grid


set size 0.6,0.7

#set yrang [0:1]

set xrang [0:1]
set yrang [0:1]
#set xtics (10, 20, 30, 50, 70, 100, 150,200,300,400,500)
#set xtics (10,100, 1000,10000)
#set xtics nomirror rotate by -45
set ylabel "F1-Score (Opt EF1-Score)" font "Courier,20"
set xlabel "F1-Score (Opt F1-Score)" font "Courier,20"
set term postscript eps enhanced color "Courier,19"



f1(x) = m11*x + b1
fit f1(x) "AUI4IR_results/scatter_plot2_lambda_0.9.txt" using 2:1 via m11,b1

f2(x) = m21*x + b2
fit f2(x) "AUI4IR_results/scatter_plot2_lambda_0.8.txt" using 2:1 via m21,b2

f3(x) = m31*x + b3
fit f3(x) "AUI4IR_results/scatter_plot2_lambda_0.7.txt" using 2:1 via m31,b3

f4(x) = m41*x + b4
fit f4(x) "AUI4IR_results/scatter_plot2_lambda_0.6.txt" using 2:1 via m41,b4

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
#unset key


set output "scatter_plot2_EF1.vs.F1.eps"
plot "AUI4IR_results/scatter_plot2_lambda_1.0.txt" using 2:1 title '{/Symbol l}=1.0'  with points lw 1 ps 0.5 pt 1 lc 1,\
 "AUI4IR_results/scatter_plot2_lambda_0.9.txt" using 2:1 title '{/Symbol l}=0.9'  with points lw 1 ps 0.5 pt 2 lc 2,\
 f1(x) notitle lw 2  lc 2,\
 "AUI4IR_results/scatter_plot2_lambda_0.8.txt" using 2:1 title '{/Symbol l}=0.8'  with points lw 1 ps 0.5 pt 3 lc 3,\
  f2(x) notitle lw 2  lc 3,\
"AUI4IR_results/scatter_plot2_lambda_0.7.txt" using 2:1 title '{/Symbol l}=0.7'  with points lw 1 ps 0.5 pt 4 lc 4,\
  f3(x) notitle lw 2  lc 4,\
"AUI4IR_results/scatter_plot2_lambda_0.6.txt" using 2:1 title '{/Symbol l}=0.6'  with points lw 1 ps 0.5 pt 7 lc 5,\
 f4(x) notitle lw 2  lc 5



###########################################################################################
########################## Performance scatter_plot2_EF1.vs.F1 #############################
###########################################################################################



clear
reset
set encoding iso_8859_1
set grid



#set yrang [0:1]

set xrang [0:1]
set yrang [0:1]
set xtics (0,0.3,0.6)
set ytics (0,0.2, 0.5,0.8,1.0)
#set xtics (10,100, 1000,10000)
#set xtics nomirror rotate by -45
set xlabel "F1 (Opt. F1)" font "Courier,20"
set term postscript eps enhanced color "Courier,24"

set size 1.23,0.56
set tmargin 2.4

f1(x) = m11*x + b1
fit f1(x) "AUI4IR_results/scatter_plot2_lambda_0.9.txt" using 2:1 via m11,b1

f2(x) = m21*x + b2
fit f2(x) "AUI4IR_results/scatter_plot2_lambda_0.8.txt" using 2:1 via m21,b2

f3(x) = m31*x + b3
fit f3(x) "AUI4IR_results/scatter_plot2_lambda_0.7.txt" using 2:1 via m31,b3

f4(x) = m41*x + b4
fit f4(x) "AUI4IR_results/scatter_plot2_lambda_0.6.txt" using 2:1 via m41,b4

set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
#unset key


#set label 1 at -91.7, 35.8  left "Irma \nhurricane \nFL 09/2017"  front #FL
set term postscript eps enhanced color "Courier,20"
set output "scatter_plot2_EF1.vs.F1.eps"

set multiplot layout 1,5


set size 0.45,0.54
set origin 0,0
set ylabel "F1 (Opt. EF1)" font "Courier,24"
set title "{/Symbol l}=0.6"  font "Courier,32" 
set label 1 at 0.05, 0.89  "RMSE=0.0797" tc "black"
#set output "scatter_plot2_EF1.vs.F1_lambda_0.6.eps"
plot "AUI4IR_results/scatter_plot2_lambda_0.6.txt" using 2:1 notitle '{/Symbol l}=0.6'  with points lw 1 ps 0.75 pt 7 lc 7,\
f4(x) notitle lw 8  lc 7,\
x notitle lc 'black'


unset ylabel
set format y ""


set size 0.34,0.54
set origin 0.37,0
set title "{/Symbol l}=0.7"
set label 1 at 0.05, 0.89  "RMSE=0.0636" tc "black"
#set output "scatter_plot2_EF1.vs.F1_lambda_0.7.eps"
plot "AUI4IR_results/scatter_plot2_lambda_0.7.txt" using 2:1 notitle '{/Symbol l}=0.7'  with points lw 1 ps 0.75 pt 7 lc 4,\
f3(x) notitle lw 8  lc 4,\
x notitle lc 'black'

set size 0.34,0.54
set origin 0.63,0
set title "{/Symbol l}=0.8"
set label 1 at 0.05, 0.89  "RMSE=0.0364" tc "black"
#set output "scatter_plot2_EF1.vs.F1_lambda_0.8.eps"
plot "AUI4IR_results/scatter_plot2_lambda_0.8.txt" using 2:1 notitle '{/Symbol l}=0.8'  with points lw 1 ps 0.75 pt 7 lc 6,\
f2(x) notitle lw 8  lc 6,\
x notitle lc 'black'


set xtics (0,0.3,0.6,1.0)
set title "{/Symbol l}=0.9"
set size 0.36,0.54
set origin 0.89,0
set label 1 at 0.05, 0.89  "RMSE=0.0111" tc "black"
#set output "scatter_plot2_EF1.vs.F1_lambda_0.9.eps"
plot "AUI4IR_results/scatter_plot2_lambda_0.9.txt" using 2:1 notitle '{/Symbol l}=0.9'  with points lw 1 ps 0.75 pt 7 lc 2,\
f1(x) notitle lw 8  lc 2,\
x notitle lc 'black'



unset multiplot

 


###########################################################################################
########################## Performance boxplot_plot2_EF1.vs.F1 #############################
###########################################################################################

reset
clear
set boxwidth 0.5 absolute
set style fill   solid 0.25 border lt -1
set style fill solid 0.75 border lt -1
unset key
set grid
set pointsize 0.5
set size 0.75,0.55
set ylabel "Squared Error" font "Courier,24"
set style data boxplot

set border 4095
set key left
set key  reverse Left 

#set bmargin 3
#set yrange [0:450]
set xtics   ("{/Symbol l}=0.9" 1,"{/Symbol l}=0.8" 2,"{/Symbol l}=0.7" 3,"{/Symbol l}=0.6" 4)
set term postscript eps enhanced color "Courier,24"
set output "boxplot2_EF1.vs.F1.eps" 
plot 'AUI4IR_results/scatter_plot2_lambda_0.9.txt' using (1):3 lc 1 lw 3  notitle ,\
'AUI4IR_results/scatter_plot2_lambda_0.8.txt' using (2):3 lc 2 lw 3 notitle,\
'AUI4IR_results/scatter_plot2_lambda_0.7.txt' using (3):3 lc 3 lw 3 notitle,\
'AUI4IR_results/scatter_plot2_lambda_0.6.txt' using (4):3 lc 4 lw 3 notitle,\


