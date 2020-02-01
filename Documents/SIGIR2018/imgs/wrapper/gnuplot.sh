clear
reset
set encoding iso_8859_1
set grid



###########################################################################################
############################ Performance Precision Vs#Data #################################
###########################################################################################





set yrang [0:25]

set xrang [1:5]
#set xtics (10, 20, 30, 50, 70, 100, 150,200,300,400,500)
set xtics (1,2, 3,4,5)
#set logscale x
#set xtics nomirror rotate by -45
set ylabel "ERecall" font "Courier,24"
set xlabel "#Filter" font "Courier,24"
set term postscript eps enhanced color "Courier,19"



set key top left
set key  reverse Left 
set ylabel "Precision" font "Courier,22"
unset key


#set output "wrapper_posrate_30.0_lambda_1.0_rate_data_150.eps"
#plot "AUI4IR_results/wrapper_posrate_30.0_lambda_1.0_rate_data_150.txt" using 1:3 title 'Dichotomy Merge' with linespoints lw 4 ps 1.95 pt 6 lc 2,\
# "AUI4IR_results/wrapper_posrate_30.0_lambda_1.0_rate_data_150.txt" using 1:5 title 'Greedy Merge'   with linespoints lw 4 ps 1.95 pt 3 lc 3,\
# "AUI4IR_results/wrapper_posrate_30.0_lambda_1.0_rate_data_150.txt" using 1:7 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4


set size 0.38,0.5

set ylabel "% of non-filterd\n  elements with \n S(j)>0.6" font "Courier,20"

set output "wrapper_posrate_30.0_lambda_0.7_rate_data_150.eps"
plot "AUI4IR_results/wrapper_posrate_30.0_lambda_0.7_rate_data_150.txt" using 1:2 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/wrapper_posrate_30.0_lambda_0.7_rate_data_150.txt" using 1:4 title 'Greedy Merge'   with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/wrapper_posrate_30.0_lambda_0.7_rate_data_150.txt" using 1:6 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4
set size 0.3,0.5

unset ylabel

set output "wrapper_posrate_30.0_lambda_0.8_rate_data_150.eps"
plot "AUI4IR_results/wrapper_posrate_30.0_lambda_0.8_rate_data_150.txt" using 1:2 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/wrapper_posrate_30.0_lambda_0.8_rate_data_150.txt" using 1:4 title 'Greedy Merge'   with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/wrapper_posrate_30.0_lambda_0.8_rate_data_150.txt" using 1:6 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4


unset ylabel

set output "wrapper_posrate_30.0_lambda_0.9_rate_data_150.eps"
plot "AUI4IR_results/wrapper_posrate_30.0_lambda_0.9_rate_data_150.txt" using 1:2 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/wrapper_posrate_30.0_lambda_0.9_rate_data_150.txt" using 1:4 title 'Greedy Merge'   with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/wrapper_posrate_30.0_lambda_0.9_rate_data_150.txt" using 1:6 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4


unset ylabel

set output "wrapper_posrate_30.0_lambda_1.0_rate_data_150.eps"
plot "AUI4IR_results/wrapper_posrate_30.0_lambda_1.0_rate_data_150.txt" using 1:2 title 'Dichotomy Merge'  with linespoints lw 4 ps 1.95 pt 6 lc 2,\
 "AUI4IR_results/wrapper_posrate_30.0_lambda_1.0_rate_data_150.txt" using 1:4 title 'Greedy Merge'   with linespoints lw 4 ps 1.95 pt 3 lc 3,\
 "AUI4IR_results/wrapper_posrate_30.0_lambda_1.0_rate_data_150.txt" using 1:6 title 'Gurobi Merge'  with linespoints lw 4 ps 1.95 pt 4 lc 4



