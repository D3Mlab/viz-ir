
reset
clear
set boxwidth 0.5 absolute
set style fill   solid 0.95 border lt -1
set style fill solid 0.95 border lt -1
unset key
set grid
set pointsize 0.5
set size 0.85,0.65
set ylabel "Squared Error" font "Courier,24"
set style data boxplot

set border 4095
set key right
#set key  reverse Left 

#set bmargin 3
#set yrange [0:450]
set xtics   ("{/Symbol l}=0.6" 1,"{/Symbol l}=0.7" 4,"{/Symbol l}=0.8" 7,"{/Symbol l}=0.9" 10)
set term postscript eps enhanced color "Courier,24"
set output "boxplot_EF1.vs.F1.eps" 
plot 'Enron_results/AUI4IR_results/scatter_plot_lambda_0.6.txt' using (1-0.75):3 lc 4 lw 2  title 'Enron' ,\
'Twitter_results/AUI4IR_results/scatter_plot_lambda_0.6.txt' using (1):3 lc 2 lw 2 title 'Twitter',\
'Reddit_results/AUI4IR_results/scatter_plot_lambda_0.6.txt' using (1+0.75):3 lc 3 lw 2 title 'Reddit',\
'Enron_results/AUI4IR_results/scatter_plot_lambda_0.7.txt' using (4-0.75):3 lc 4 lw 2 notitle,\
'Twitter_results/AUI4IR_results/scatter_plot_lambda_0.7.txt' using (4):3 lc 2 lw 2 notitle,\
'Reddit_results/AUI4IR_results/scatter_plot_lambda_0.7.txt' using (4+0.75):3 lc 3 lw 2 notitle,\
'Enron_results/AUI4IR_results/scatter_plot_lambda_0.8.txt' using (7-0.75):3 lc 4 lw 2 notitle,\
'Twitter_results/AUI4IR_results/scatter_plot_lambda_0.8.txt' using (7):3 lc 2 lw 2 notitle,\
'Reddit_results/AUI4IR_results/scatter_plot_lambda_0.8.txt' using (7+0.75):3 lc 3 lw 2 notitle,\
'Enron_results/AUI4IR_results/scatter_plot_lambda_0.9.txt' using (10-0.75):3 lc 4 lw 2 notitle,\
'Twitter_results/AUI4IR_results/scatter_plot_lambda_0.9.txt' using (10):3 lc 2 lw 2 notitle,\
'Reddit_results/AUI4IR_results/scatter_plot_lambda_0.9.txt' using (10+0.75):3 lc 3 lw 2 notitle

set output "boxplot2_EF1.vs.F1.eps" 
plot 'Enron_results/AUI4IR_results/scatter_plot2_lambda_0.6.txt' using (1-0.75):3 lc 4 lw 2  title 'Enron' ,\
'Twitter_results/AUI4IR_results/scatter_plot2_lambda_0.6.txt' using (1):3 lc 2 lw 2 title 'Twitter',\
'Reddit_results/AUI4IR_results/scatter_plot2_lambda_0.6.txt' using (1+0.75):3 lc 3 lw 2 title 'Reddit',\
'Enron_results/AUI4IR_results/scatter_plot2_lambda_0.7.txt' using (4-0.75):3 lc 4 lw 2 notitle,\
'Twitter_results/AUI4IR_results/scatter_plot2_lambda_0.7.txt' using (4):3 lc 2 lw 2 notitle,\
'Reddit_results/AUI4IR_results/scatter_plot2_lambda_0.7.txt' using (4+0.75):3 lc 3 lw 2 notitle,\
'Enron_results/AUI4IR_results/scatter_plot2_lambda_0.8.txt' using (7-0.75):3 lc 4 lw 2 notitle,\
'Twitter_results/AUI4IR_results/scatter_plot2_lambda_0.8.txt' using (7):3 lc 2 lw 2 notitle,\
'Reddit_results/AUI4IR_results/scatter_plot2_lambda_0.8.txt' using (7+0.75):3 lc 3 lw 2 notitle,\
'Enron_results/AUI4IR_results/scatter_plot2_lambda_0.9.txt' using (10-0.75):3 lc 4 lw 2 notitle,\
'Twitter_results/AUI4IR_results/scatter_plot2_lambda_0.9.txt' using (10):3 lc 2 lw 2 notitle,\
'Reddit_results/AUI4IR_results/scatter_plot2_lambda_0.9.txt' using (10+0.75):3 lc 3 lw 2 notitle



