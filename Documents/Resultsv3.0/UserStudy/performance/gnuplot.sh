clear
reset
set encoding iso_8859_1
set grid



set yrang [0:1]
set xrang [0:1100]

set xtics (0,300,600,900)
#set xtics nomirror rotate by -45
set ylabel "Recall" font "Courier,24"
set xlabel "Time (seconds)" font "Courier,22"



set key top left
set key  reverse Left 
#set ylabel "Precision" font "Courier,22"
unset key
set style fill   solid 0.2 transparent noborder
set size 1.18,0.56

set term postscript eps enhanced color "Courier,19"
set output "plots/nd_recall.eps"
set tmargin 1.94


set multiplot layout 1,3
set size 0.45,0.54
set origin 0,0
set title "(a) Event type"  font "Courier,20" 

plot  "data/kmeans_nd_recall.txt" using 1:3:4 every 3 title 'K-Means'  with  filledcurves lc 'red',\
	"data/filters_nd_recall.txt" using 1:3:4 every 3 title 'BPS'  with  filledcurves  lc 2 ,\
	"data/baseline_nd_recall.txt" using 1:3:4 every 3 title 'Baseline'  with  filledcurves lc 'black',\
	"data/kmeans_nd_recall.txt" using 1:2 every 3  title 'K-Means'  with linespoints lw 4 ps 1.95 pt -1 lc 'red',\
	"data/filters_nd_recall.txt" using 1:2 every 3 title 'BPS'  with linespoints lw 4 ps 1.95 pt -1 lc 2,\
	"data/baseline_nd_recall.txt" using 1:2 every 3 title 'Baseline'  with linespoints lw 4 ps 1.95 pt -1 lc 'black'


unset ylabel
set format y ""
set size 0.36,0.54
set origin 0.39,0
set title "(b) Event location"  font "Courier,20" 

plot  "data/kmeans_location_recall.txt" using 1:3:4 every 3 title 'K-Means'  with  filledcurves lc 'red',\
	"data/filters_location_recall.txt" using 1:3:4 every 3 title 'BPS'  with  filledcurves  lc 2 ,\
	"data/baseline_location_recall.txt" using 1:3:4 every 3 title 'Baseline'  with  filledcurves lc 'black',\
	"data/kmeans_location_recall.txt" using 1:2 every 3 title 'K-Means'  with linespoints lw 4 ps 1.95 pt -1 lc 'red',\
	"data/filters_location_recall.txt" using 1:2 every 3 title 'BPS'  with linespoints lw 4 ps 1.95 pt -1 lc 2,\
	"data/baseline_location_recall.txt" using 1:2 every 3 title 'Baseline'  with linespoints lw 4 ps 1.95 pt -1 lc 'black'
 

set format y "%g"

set size 0.49,0.54
set origin 0.72,0
set title "(c) Event date"  font "Courier,20" 
set ylabel "-----------------------\nTime deviation \n(Days)" font "Courier,22"
set yrang [0:2300]
plot  "data/kmeans_nd_time_deviation.txt" using 1:3:4 every 3 title 'K-Means'  with  filledcurves lc 'red',\
	"data/filters_nd_time_deviation.txt" using 1:3:4 every 3 title 'BPS'  with  filledcurves  lc 2 ,\
	"data/baseline_nd_time_deviation.txt" using 1:3:4 every 3 title 'Baseline'  with  filledcurves lc 'black',\
	"data/kmeans_nd_time_deviation.txt" using 1:2 every 3 title 'K-Means'  with linespoints lw 4 ps 1.95 pt -1 lc 'red',\
	"data/filters_nd_time_deviation.txt" using 1:2 every 3 title 'BPS'  with linespoints lw 4 ps 1.95 pt -1 lc 2,\
	"data/baseline_nd_time_deviation.txt" using 1:2 every 3 title 'Baseline'  with linespoints lw 4 ps 1.95 pt -1 lc 'black'
 
unset multiplot

#############################################
##############  BOXPLOTS   ############
#############################################







reset
clear
#set border 2 front linetype -1 linewidth 1.000
#set boxwidth 0.5 absolute
set style fill   solid 1 border lt -1
set key
set grid
set yrange [0:1.01] 
set xrange [0.5:10.5] 
#set format y "10^{%L}"
#set logscale y
#set pointsize 0.5
set border 4095
#set lmargin 4
set rmargin 0

set datafile missing "NaN"
set style data boxplot 
set style boxplot 
set size 0.7,0.4
set xtics ("300sec" 1.75,"600sec" 4.25,"900sec" 6.75,"1200sec" 9.25)  font "Courier,20" 
set ytics ("0" 0.0,"0.2" 0.2,"0.4" 0.4,"0.6" 0.6,"0.8" 0.8,"1" 1)
set ylabel "Recall" font "Courier,24"

set term postscript eps enhanced color "Courier,20"

set parametric
set trange [0:20]
const1=3
const2=5.5
const3=8
const4=10.5
const5=13


#set title "How much mental and perceptual activity was required?\n Was the task easy or demanding, simple or complex?"  font "Courier,16" 
set output "plots/nd_recall_steps.eps" 
plot "data/nd_recall_time_elapsed_300.txt" using (1):($1+rand(0)/20)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/nd_recall_time_elapsed_300.txt" using (1.75):($2+rand(0)/20) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/nd_recall_time_elapsed_300.txt" using (2.5):($3+rand(0)/20) notitle lw 2 lc 'gray' fs  pattern 3,\
 const1,t lc 'black' lw 2 lt 2 notitle,\
 "data/nd_recall_time_elapsed_600.txt" using (3.5):($1-rand(0)/20)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/nd_recall_time_elapsed_600.txt" using (4.25):($2-rand(0)/20) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/nd_recall_time_elapsed_600.txt" using (5):($3-rand(0)/20) notitle lw 2 lc 'gray' fs  pattern 3,\
  const2,t lc 'black' lw 2 lt 2 notitle,\
 "data/nd_recall_time_elapsed_900.txt" using (6):($1-rand(0)/20)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/nd_recall_time_elapsed_900.txt" using (6.75):($2-rand(0)/20) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/nd_recall_time_elapsed_900.txt" using (7.5):($3-rand(0)/20) notitle lw 2 lc 'gray' fs  pattern 3,\
   const3,t lc 'black' lw 2 lt 2 notitle,\
 "data/nd_recall_time_elapsed_1200.txt" using (8.5):($1-rand(0)/20)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/nd_recall_time_elapsed_1200.txt" using (9.25):($2-rand(0)/20) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/nd_recall_time_elapsed_1200.txt" using (10):($3-rand(0)/20) notitle lw 2 lc 'gray' fs  pattern 3
  

set output "plots/location_recall_steps.eps" 
plot "data/location_recall_time_elapsed_300.txt" using (1):($1+rand(0)/20)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/location_recall_time_elapsed_300.txt" using (1.75):($2+rand(0)/20) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/location_recall_time_elapsed_300.txt" using (2.5):($3+rand(0)/20) notitle lw 2 lc 'gray' fs  pattern 3,\
 const1,t lc 'black' lw 2 lt 2 notitle,\
 "data/location_recall_time_elapsed_600.txt" using (3.5):($1-rand(0)/20)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/location_recall_time_elapsed_600.txt" using (4.25):($2-rand(0)/20) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/location_recall_time_elapsed_600.txt" using (5):($3-rand(0)/20) notitle lw 2 lc 'gray' fs  pattern 3,\
  const2,t lc 'black' lw 2 lt 2 notitle,\
 "data/location_recall_time_elapsed_900.txt" using (6):($1-rand(0)/20)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/location_recall_time_elapsed_900.txt" using (6.75):($2-rand(0)/20) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/location_recall_time_elapsed_900.txt" using (7.5):($3-rand(0)/20) notitle lw 2 lc 'gray' fs  pattern 3,\
   const3,t lc 'black' lw 2 lt 2 notitle,\
 "data/location_recall_time_elapsed_1200.txt" using (8.5):($1-rand(0)/20)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/location_recall_time_elapsed_1200.txt" using (9.25):($2-rand(0)/20) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/location_recall_time_elapsed_1200.txt" using (10):($3-rand(0)/20) notitle lw 2 lc 'gray' fs  pattern 3
  


set ylabel "Time deviation \n(Days)" font "Courier,22"

set trange [0:2500]
set yrange [0:2500] 
set ytics ("0" 0.0,"500" 500,"1000" 1000,"1500" 1500,"2000" 2000,"2500" 2500)

set output "plots/nd_time_deviation_recall_steps.eps" 
plot "data/nd_time_deviation_time_elapsed_300.txt" using (1):($1+rand(0)*100)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/nd_time_deviation_time_elapsed_300.txt" using (1.75):($2+rand(0)*100) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/nd_time_deviation_time_elapsed_300.txt" using (2.5):($3+rand(0)*100) notitle lw 2 lc 'gray' fs  pattern 3,\
 const1,t lc 'black' lw 2 lt 2 notitle,\
 "data/nd_time_deviation_time_elapsed_600.txt" using (3.5):($1+rand(0)*100)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/nd_time_deviation_time_elapsed_600.txt" using (4.25):($2+rand(0)*100) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/nd_time_deviation_time_elapsed_600.txt" using (5):($3+rand(0)*100) notitle lw 2 lc 'gray' fs  pattern 3,\
  const2,t lc 'black' lw 2 lt 2 notitle,\
 "data/nd_time_deviation_time_elapsed_900.txt" using (6):($1+rand(0)*100)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/nd_time_deviation_time_elapsed_900.txt" using (6.75):($2+rand(0)*100) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/nd_time_deviation_time_elapsed_900.txt" using (7.5):($3+rand(0)*100) notitle lw 2 lc 'gray' fs  pattern 3,\
   const3,t lc 'black' lw 2 lt 2 notitle,\
 "data/nd_time_deviation_time_elapsed_1200.txt" using (8.5):($1+rand(0)*100)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/nd_time_deviation_time_elapsed_1200.txt" using (9.25):($2+rand(0)*100) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/nd_time_deviation_time_elapsed_1200.txt" using (10):($3+rand(0)*100) notitle lw 2 lc 'gray' fs  pattern 3
  


















