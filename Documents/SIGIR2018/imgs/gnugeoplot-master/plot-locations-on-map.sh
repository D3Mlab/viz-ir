# NOTE: Gill Sans is available only on OSX.
set terminal postscript eps  enhanced color "Courier, 16" linewidth 2 rounded dashed


#set style line 80 lc rgb "#000000" lt 1 lw 1
#set border 1 back ls 80
set size 0.6,0.55
#set style line 81 lc rgb "#000000" lt 0 lw 0.4
#set style line 82 lc rgb "#000000" lt 0 lw 0.2
# NOTE: Grid lines can be distracting on a map.
#set grid back xtics ytics ls 81, ls 82
#set grid back ls 81

#set tics in
#set xtics nomirror
#set ytics nomirror

# Colors chosen from colorbrewer; print- and photocopy-friendly.
set style line 1 lt 1 lc rgb "#ffffff"   lw 0.5
set style line 2 lt 1 lc rgb "#000000"   lw 0.5

#set key top left

set tmargin 0.28
set rmargin 0.5
set bmargin 0.28
set lmargin 0.5

set xrange [-127:-66]
set yrange [25:50]

#unset xlabel
#unset xtics

#unset ylabel
#unset ytics
#set term postscript eps enhanced color "Courier,19"
#set grid

#set output 'usa1.eps'
#plot 'usa1.txt' not w l ls 1, \
#     'lat-lng-data.txt' u 3:2 notitle pt 7 lc "red"

#set output 'usa2.eps'
#plot 'usa2.txt' not w l ls 1, \
#     'lat-lng-data.txt' u 3:2 notitle pt 7 lc "red"

set output 'twitter_net.eps'
plot 'usa3.txt' notitle w filledcurves  ls 1, \
	 'usa3.txt' notitle w l ls 2, \
     'twitter.txt' u 2:1 notitle ps 0.3 pt 7 lc "blue"

set output 'twitter_example.eps'
plot 'usa3.txt' notitle w l ls 2, \
     'twitter.txt' u 2:1 notitle ps 0.3 pt 7 lc "blue",\
     'twitter_robots.txt' u 3:2 notitle ps 0.3 pt 7 lc "red"

#set xrange [-81:-71]
#set yrange [40.3:45.2]


#set title "Filetring to \n NY state." font "Courier, 26"  offset -9,-5

set obj 1 rect from -90, 25 to -80, 31 fs solid 0.15 fc rgb "#FFD700" behind  # florida
set obj 2 rect from -92, 31.3 to -78, 36.8 fs solid 1 fc rgb "#FFFFFF"  front # FL
set label 1 at -91.7, 35.8  left "Irma \nhurricane \nFL 09/2017"  front #FL



set obj 4 rect from -125, 45 to -115.5, 49.3 fs solid 0.15 fc rgb "#2600ff" behind # WA
set obj 5 rect from -125, 44.85 to -110.5 , 39.7 fs solid 1 fc rgb "#FFFFFF"  front # WA
set label 6 at -124.8, 44 left  "Measles \nepidemic \nWA 01/2017"  front  #WA




set obj 7 rect from -80, 40 to -70, 45 fs solid 0.15 fc rgb "#ff0000" behind # NY
set obj 8 rect from -82, 45.2 to -68.2, 49 fs solid 1 fc rgb "#FFFFFF" front # NY
set label 9 at -81.9, 48 left  "Blizzard \nNY 02/2015"  front  #WA



set output 'twitter_example_filter.eps'
plot 'usa3.txt' notitle w l ls 2, \
     'blue.txt' u 3:2 notitle ps 0.3 pt 7 lc "blue",\
     'red.txt' u 3:2 notitle ps 0.3 pt 7 lc "red"






set xrange [-127:-66]
set yrange [25:50]
set obj 7 rect from -80, 40 to -70, 45 fs solid 0.15 fc rgb "#ff0000" behind # NY
set output 'twitter_example2.eps'
plot 'usa3.txt' notitle w l ls 2, \
     'twitter.txt' u 2:1 notitle ps 0.3 pt 7 lc "blue",\
     'twitter_robots.txt' u 3:2 notitle ps 0.3 pt 7 lc "red"







set xrange [-80:-70]
set yrange [40:45]
set output 'twitter_example_Zoom_NY.eps'
plot 'usa3.txt' notitle w l ls 2 lw 3, \
     'blue.txt' u 3:2 notitle ps 1 pt 7 lc "blue",\
     'red.txt' u 3:2 notitle ps 1 pt 7 lc "red"





#set output 'twitter_net2.eps'
#plot 'usa3.txt' notitle w filledcurves  ls 1, \
#	 'usa3.txt' notitle w l ls 2, \
#     'twitter.txt' u ($2+(rand(0)/100)):($1+(rand(0)/100))  notitle ps 0.3 pt 7 lc "blue"

#set output 'usa4.eps'
#plot 'usa4.txt' not w l ls 1, \
#     'twitter.txt' u 2:1 notitle ps 0.1 pt 7 lc "red"
#set output 'twitter_net3.eps'
#plot 'usa3.txt' notitle w filledcurves  ls 1, \
#	 'usa3.txt' notitle w l ls 2, \
#     'zip_codes_states.txt' u ($3+(rand(0)/100)):($2+(rand(0)/100)) notitle ps 0.3 pt 7 lc "blue"


unset output
