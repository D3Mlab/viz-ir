##############
#### NASA TLX
##############

reset
clear
#set border 2 front linetype -1 linewidth 1.000
#set boxwidth 0.5 absolute
set style fill   solid 1 border lt -1
set key
set grid
set yrange [0:10] 
set xrange [0.5:3] 
#set format y "10^{%L}"
#set logscale y
#set pointsize 0.5
set border 4095
set lmargin 8

set datafile missing "NaN"
set style data boxplot 
set style boxplot 
set size 0.8,0.6
set xtics ("BPS" 1,"K-Means" 1.75,"Baseline" 2.5)
set ytics ("Low 0" 0,"2" 2,"4" 4,"6" 6,"8" 8,"High 10" 10)
set term postscript eps enhanced color "Courier,17"

set title "How much mental and perceptual activity was required?\n Was the task easy or demanding, simple or complex?"  font "Courier,16" 
set output "plots/NASA_TLX_Q1.eps" 
plot "data/NASA_TLX_Filtering.txt" using (1):($1+rand(0)/10000)  notitle lw 2 lc 2,\
 "data/NASA_TLX_K-Means.txt" using (1.75):($1+rand(0)/10000) notitle lw 2 lc 'red',\
"data/NASA_TLX_Baseline.txt" using (2.5):($1+rand(0)/10000) notitle lw 2 lc 'gray'


set title "How much physical activity was required?\n Was the task easy or demanding, slack or strenuous?"  font "Courier,16" 
set output "plots/NASA_TLX_Q2.eps" 
plot "data/NASA_TLX_Filtering.txt" using (1):($2+rand(0)/10000)  notitle lw 2 lc 2,\
 "data/NASA_TLX_K-Means.txt" using (1.75):($2+rand(0)/10000) notitle lw 2 lc 'red',\
"data/NASA_TLX_Baseline.txt" using (2.5):($2+rand(0)/10000) notitle lw 2 lc 'gray'

set title "How much time pressure did you feel due to the pace\n at which the tasks or task elements occurred?\n Was the pace slow or rapid?"  font "Courier,16" 
set output "plots/NASA_TLX_Q3.eps" 
plot "data/NASA_TLX_Filtering.txt" using (1):($3+rand(0)/10000)  notitle lw 2 lc 2,\
 "data/NASA_TLX_K-Means.txt" using (1.75):($3+rand(0)/10000) notitle lw 2 lc 'red',\
"data/NASA_TLX_Baseline.txt" using (2.5):($3+rand(0)/10000) notitle lw 2 lc 'gray'

set title "How successful were you in performing the task?\n How satisfied were you with your performance?"  font "Courier,16" 
set output "plots/NASA_TLX_Q4.eps" 
plot "data/NASA_TLX_Filtering.txt" using (1):($4+rand(0)/10000)  notitle lw 2 lc 2,\
 "data/NASA_TLX_K-Means.txt" using (1.75):($4+rand(0)/10000) notitle lw 2 lc 'red',\
"data/NASA_TLX_Baseline.txt" using (2.5):($4+rand(0)/10000) notitle lw 2 lc 'gray'

set title "How irritated, stressed, and annoyed versus content,\n relaxed, and complacent did you feel during the task?"  font "Courier,16" 
set output "plots/NASA_TLX_Q5.eps" 
plot "data/NASA_TLX_Filtering.txt" using (1):($5+rand(0)/10000)  notitle lw 2 lc 2,\
 "data/NASA_TLX_K-Means.txt" using (1.75):($5+rand(0)/10000) notitle lw 2 lc 'red',\
"data/NASA_TLX_Baseline.txt" using (2.5):($5+rand(0)/10000) notitle lw 2 lc 'gray'

set title "How hard did you have to work (mentally and physically)\n to accomplish your level of performance?"  font "Courier,16" 
set output "plots/NASA_TLX_Q6.eps" 
plot "data/NASA_TLX_Filtering.txt" using (1):($6+rand(0)/10000)  notitle lw 2 lc 2,\
 "data/NASA_TLX_K-Means.txt" using (1.75):($6+rand(0)/10000) notitle lw 2 lc 'red',\
"data/NASA_TLX_Baseline.txt" using (2.5):($6+rand(0)/10000) notitle lw 2 lc 'gray'

##############
#### NASA TLX
##############

reset
clear
#set border 2 front linetype -1 linewidth 1.000
#set boxwidth 0.5 absolute
set style fill   solid 1 border lt -1
set key
set grid
set yrange [0:20] 
set xrange [0.5:15.5] 
#set format y "10^{%L}"
#set logscale y
#set pointsize 0.5
set border 4095
set lmargin 3
#set bmargin 3

set datafile missing "NaN"
set style data boxplot 
set style boxplot 
set size 0.7,0.4
set xtics ("Mental\n demand " 1.75,"Physical\n demand" 4.25,"Temporal\n demand" 6.75,"Performance" 9.25,"Frustration" 11.75,"Effort" 14.25)
set xtics ("MD " 1.75,"PD" 4.25,"TD" 6.75,"OP" 9.25,"FR" 11.75,"EF" 14.25)  font "Courier,24" 
set ytics ("0" 0,"5" 5,"10" 10,"15" 15,"20" 20)
set term postscript eps enhanced color "Courier,20"

set parametric
set trange [0:20]
const1=3
const2=5.5
const3=8
const4=10.5
const5=13
#set title "How much mental and perceptual activity was required?\n Was the task easy or demanding, simple or complex?"  font "Courier,16" 
set output "plots/NASA_TLX.eps" 
plot "data/NASA_TLX_Filtering.txt" using (1):($1*2+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/NASA_TLX_K-Means.txt" using (1.75):($1*2+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/NASA_TLX_Baseline.txt" using (2.5):($1*2+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3,\
 const1,t lc 'black' lw 2 lt 2 notitle,\
 "data/NASA_TLX_Filtering.txt" using (3.5):($2*2+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/NASA_TLX_K-Means.txt" using (4.25):($2*2+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/NASA_TLX_Baseline.txt" using (5):($2*2+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3,\
  const2,t lc 'black' lw 2 lt 2 notitle,\
 "data/NASA_TLX_Filtering.txt" using (6):($3*2+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/NASA_TLX_K-Means.txt" using (6.75):($3*2+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/NASA_TLX_Baseline.txt" using (7.5):($3*2+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3,\
   const3,t lc 'black' lw 2 lt 2 notitle,\
 "data/NASA_TLX_Filtering.txt" using (8.5):(21-($4*2)+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/NASA_TLX_K-Means.txt" using (9.25):(21-($4*2)+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/NASA_TLX_Baseline.txt" using (10):(21-($4*2)+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3,\
   const4,t lc 'black' lw 2 lt 2 notitle,\
 "data/NASA_TLX_Filtering.txt" using (11):($5*2+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/NASA_TLX_K-Means.txt" using (11.75):($5*2+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/NASA_TLX_Baseline.txt" using (12.5):($5*2+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3,\
   const5,t lc 'black' lw 2 lt 2 notitle,\
 "data/NASA_TLX_Filtering.txt" using (13.5):($6*2+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/NASA_TLX_K-Means.txt" using (14.25):($6*2+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/NASA_TLX_Baseline.txt" using (15):($6*2+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3




set size 0.55,0.4
set yrange [0:120] 
set ytics border mirror norotate autofreq
set lmargin 4
set bmargin 2
set rmargin 0
set xtics ("BPS" 1,"K-Means" 1.75,"Baseline" 2.5)

set xrange [0.5:3] 

set output "plots/NASA_TLX_SUM.eps" 
plot "data/NASA_TLX_Filtering.txt" using (1):($7*2+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/NASA_TLX_K-Means.txt" using (1.75):($7*2+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
"data/NASA_TLX_Baseline.txt" using (2.5):($7*2+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3


##############
#### SUS
##############

reset
clear
#set border 2 front linetype -1 linewidth 1.000
#set boxwidth 0.5 absolute
set style fill   solid 1 border lt -1
set key
set grid
set yrange [0:10] 
set xrange [0.5:3] 
#set format y "10^{%L}"
#set logscale y
#set pointsize 0.5
set border 4095

set datafile missing "NaN"
set style data boxplot 
set style boxplot 
set size 0.8,0.6
set xtics ("BPS" 1,"K-Means" 1.75,"Baseline" 2.5)
set ytics ("Strongly\n disagree 0" 0,"2" 2,"4" 4,"6" 6,"8" 8,"Strongly\n agree 10" 10)
set lmargin 11

set term postscript eps enhanced color "Courier,17"
#set ylabel "Values" font "Helvetica,22"

set title "I think that I would like to use this\n system frequently"  font "Courier,16" 
set output "plots/SUS_Q1.eps" 
plot "data/SUS_Filtering.txt" using (1):($1+rand(0)/10000)  notitle lw 2 lc 2,\
 "data/SUS_K-Means.txt" using (1.75):($1+rand(0)/10000) notitle lw 2 lc 'red',\
"data/SUS_Baseline.txt" using (2.5):($1+rand(0)/10000) notitle lw 2 lc 'gray'


set title "I found the system unnecessarily complex"  font "Courier,16" 
set output "plots/SUS_Q2.eps" 
plot "data/SUS_Filtering.txt" using (1):($2+rand(0)/10000)  notitle lw 2 lc 2,\
 "data/SUS_K-Means.txt" using (1.75):($2+rand(0)/10000) notitle lw 2 lc 'red',\
"data/SUS_Baseline.txt" using (2.5):($2+rand(0)/10000) notitle lw 2 lc 'gray'

set title "I thought the system was easy to use"  font "Courier,16" 
set output "plots/SUS_Q3.eps" 
plot "data/SUS_Filtering.txt" using (1):($3+rand(0)/10000)  notitle lw 2 lc 2,\
 "data/SUS_K-Means.txt" using (1.75):($3+rand(0)/10000) notitle lw 2 lc 'red',\
"data/SUS_Baseline.txt" using (2.5):($3+rand(0)/10000) notitle lw 2 lc 'gray'

set title "I think that I would need the support of a technical\n person to be able to use this system"  font "Courier,16" 
set output "plots/SUS_Q4.eps" 
plot "data/SUS_Filtering.txt" using (1):($4+rand(0)/10000)  notitle lw 2 lc 2,\
 "data/SUS_K-Means.txt" using (1.75):($4+rand(0)/10000) notitle lw 2 lc 'red',\
"data/SUS_Baseline.txt" using (2.5):($4+rand(0)/10000) notitle lw 2 lc 'gray'

set title "I found the functions were well integrated\n in the system"  font "Courier,16" 
set output "plots/SUS_Q5.eps" 
plot "data/SUS_Filtering.txt" using (1):($5+rand(0)/10000)  notitle lw 2 lc 2,\
 "data/SUS_K-Means.txt" using (1.75):($5+rand(0)/10000) notitle lw 2 lc 'red',\
"data/SUS_Baseline.txt" using (2.5):($5+rand(0)/10000) notitle lw 2 lc 'gray'

set title "I thought the functions did not support this system"  font "Courier,16" 
set output "plots/SUS_Q6.eps" 
plot "data/SUS_Filtering.txt" using (1):($6+rand(0)/10000)  notitle lw 2 lc 2,\
 "data/SUS_K-Means.txt" using (1.75):($6+rand(0)/10000) notitle lw 2 lc 'red',\
"data/SUS_Baseline.txt" using (2.5):($6+rand(0)/10000) notitle lw 2 lc 'gray'

set title "I would imagine that most people would learn\n to use this system very quickly"  font "Courier,16" 
set output "plots/SUS_Q7.eps" 
plot "data/SUS_Filtering.txt" using (1):($7+rand(0)/10000)  notitle lw 2 lc 2,\
 "data/SUS_K-Means.txt" using (1.75):($7+rand(0)/10000) notitle lw 2 lc 'red',\
"data/SUS_Baseline.txt" using (2.5):($7+rand(0)/10000) notitle lw 2 lc 'gray'


set title "I needed to learn a lot of things before\n I could get going with this system"  font "Courier,16" 
set output "plots/SUS_Q8.eps" 
plot "data/SUS_Filtering.txt" using (1):($8+rand(0)/10000)  notitle lw 2 lc 2,\
 "data/SUS_K-Means.txt" using (1.75):($8+rand(0)/10000) notitle lw 2 lc 'red',\
"data/SUS_Baseline.txt" using (2.5):($8+rand(0)/10000) notitle lw 2 lc 'gray'

set title "I felt very confident using the system"  font "Courier,16" 
set output "plots/SUS_Q9.eps" 
plot "data/SUS_Filtering.txt" using (1):($9+rand(0)/10000)  notitle lw 2 lc 2,\
 "data/SUS_K-Means.txt" using (1.75):($9+rand(0)/10000) notitle lw 2 lc 'red',\
"data/SUS_Baseline.txt" using (2.5):($9+rand(0)/10000) notitle lw 2 lc 'gray'

set title "I found the system very difficult to use"  font "Courier,16" 
set output "plots/SUS_Q10.eps" 
plot "data/SUS_Filtering.txt" using (1):($10+rand(0)/10000)  notitle lw 2 lc 2,\
 "data/SUS_K-Means.txt" using (1.75):($10+rand(0)/10000) notitle lw 2 lc 'red',\
"data/SUS_Baseline.txt" using (2.5):($10+rand(0)/10000) notitle lw 2 lc 'gray'
##############
#### SUS
##############

reset
clear
#set border 2 front linetype -1 linewidth 1.000
#set boxwidth 0.5 absolute
set style fill   solid 1 border lt -1
set key
set grid
set yrange [0:10] 
set xrange [0.5:25.5] 
#set format y "10^{%L}"
#set logscale y
#set pointsize 0.5
set border 4095

set datafile missing "NaN"
set style data boxplot 
set style boxplot 
set size 1.6,0.4
set xtics ("Overall\n satisfaction" 1.75,"System is\n complex" 4.25,"Easy to\n use" 6.75,"Need of\n help" 9.25,"Functions well\n integrated" 11.75,"Inconsistent\n system" 14.25,"Easy to\n learn" 16.75,"Require a lof\n of learning" 19.25,"Usage\n confidence" 21.75,"Usage\n difficulty" 24.25)
set ytics ("0" 0,"2" 2,"4" 4,"6" 6,"8" 8,"10" 10)
set lmargin 3
set rmargin 1
set bmargin 3

set parametric
set trange [0:10]
const1=3
const2=5.5
const3=8
const4=10.5
const5=13
const6=15.5
const7=18
const8=20.5
const9=23

set term postscript eps enhanced color "Courier,13"
set output "plots/SUS.eps" 

plot "data/SUS_Filtering.txt" using (1):($1+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/SUS_K-Means.txt" using (1.75):($1+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/SUS_Baseline.txt" using (2.5):($1+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3,\
 const1,t lc 'black' lw 2 lt 2 notitle,\
 "data/SUS_Filtering.txt" using (3.5):($2+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/SUS_K-Means.txt" using (4.25):($2+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/SUS_Baseline.txt" using (5):($2+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3,\
 const2,t lc 'black' lw 2 lt 2 notitle,\
 "data/SUS_Filtering.txt" using (6):($3+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/SUS_K-Means.txt" using (6.75):($3+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/SUS_Baseline.txt" using (7.5):($3+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3,\
 const3,t lc 'black' lw 2 lt 2 notitle,\
 "data/SUS_Filtering.txt" using (8.5):($4+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/SUS_K-Means.txt" using (9.25):($4+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/SUS_Baseline.txt" using (10):($4+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3,\
 const4,t lc 'black' lw 2 lt 2 notitle,\
 "data/SUS_Filtering.txt" using (11):($5+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
  "data/SUS_K-Means.txt" using (11.75):($5+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/SUS_Baseline.txt" using (12.5):($5+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3,\
 const5,t lc 'black' lw 2 lt 2 notitle,\
 "data/SUS_Filtering.txt" using (13.5):($6+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/SUS_K-Means.txt" using (14.25):($6+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/SUS_Baseline.txt" using (15):($6+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3,\
 const6,t lc 'black' lw 2 lt 2 notitle,\
 "data/SUS_Filtering.txt" using (16):($7+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/SUS_K-Means.txt" using (16.75):($7+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/SUS_Baseline.txt" using (17.5):($7+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3,\
 const7,t lc 'black' lw 2 lt 2 notitle,\
 "data/SUS_Filtering.txt" using (18.5):($8+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/SUS_K-Means.txt" using (19.25):($8+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/SUS_Baseline.txt" using (20):($8+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3,\
 const8,t lc 'black' lw 2 lt 2 notitle,\
 "data/SUS_Filtering.txt" using (21):($9+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/SUS_K-Means.txt" using (21.75):($9+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/SUS_Baseline.txt" using (22.5):($9+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3,\
 const9,t lc 'black' lw 2 lt 2 notitle,\
 "data/SUS_Filtering.txt" using (23.5):($10+rand(0)/10000)  notitle lw 2 lc 2 fs  pattern 1,\
 "data/SUS_K-Means.txt" using (24.25):($10+rand(0)/10000) notitle lw 2 lc 'red' fs  pattern 2,\
 "data/SUS_Baseline.txt" using (25):($10+rand(0)/10000) notitle lw 2 lc 'gray' fs  pattern 3

######
### OVERALL HISTO NASA TLX
###

reset
set style fill   solid 1 border lt -1
set size 0.5,0.36
set grid
set offset -0.3,-0.3,0,0

set yrange [0:80]
#set xrange [-1:1]
unset key #outside center top horizontal
#set style data histograms errorbars
set style histogram errorbars
set bars 2 linewidth 5
set style data histograms 

#set xtics   ("Sreda" 0.00000)
#set offset -0.5,-0.5,0,0
#set ytics font "Courier,22"
set xtics ("BPS" -0.1,"K-Means" 0.1,"Baseline" 0.3)
set offset -0.8,-0.6,0,0
set boxwidth 0.5
set lmargin 3
set ytics ("0" 0,"20" 20,"40" 40,"60" 60,"80" 80)

set term postscript eps enhanced color "Courier,20"
set output "plots/NASA_TLX_AVERAGE.eps" 


plot 'data/NASA_TLX_AVERAGE.txt' using 1:2 lw 2 lc 2 fs pattern 1,\
 '' u 3:4 lw 2 lc 'red' fs pattern 2,\
  '' u 5:6 lw 2 lc 'grey' fs pattern 3

######
### OVERALL HISTO SUS
###

reset
set style fill   solid 1 border lt -1
set size 0.6,0.36
set grid
set offset -0.3,-0.3,0,0

set yrange [0:100]
#set xrange [-1:1]
unset key #outside center top horizontal
#set style data histograms errorbars
set style histogram errorbars
set bars 2 linewidth 5
set style data histograms 

#set xtics   ("Sreda" 0.00000)
#set offset -0.5,-0.5,0,0
#set ytics font "Courier,22"
set xtics ("BPS" -0.1,"K-Means" 0.1,"Baseline" 0.3)
set offset -0.8,-0.6,0,0
set boxwidth 0.5
set lmargin 4
#set ytics ("0" 0,"20" 20,"40" 40,"60" 60,"80" 80)

set term postscript eps enhanced color "Courier,20"
set output "plots/SUS_AVERAGE.eps" 


plot 'data/SUS_AVERAGE.txt' using 1:2 lw 2 lc 2 fs pattern 1,\
 '' u 3:4 lw 2 lc 'red' fs pattern 2,\
  '' u 5:6 lw 2 lc 'grey' fs pattern 3






#####################
######Ranking 
#################

clear
reset
set yrange [0:20]
set style fill   solid 1  border lt -1
set style histogram clustered gap 1 title  offset character 0, 0, 0
set xlabel font "Courier,22"
set size 0.85,0.3
set grid
set style histogram  
set key vert
set ylabel "# users" font "Courier,24"
set key center top
unset key #horiz
set xrang [-0.4:2.4]
set style data histograms
#set style fill pattern border
set term postscript eps enhanced color "Courier,19"
set output "plots/ranking.eps" 


plot 'data/rankings.txt' using 2:xticlabels(1) ti col lc 2 fs pattern 1, '' u 3 ti col lc 'red' fs pattern 2, '' u 4 ti col lc 'gray' fs pattern 3















