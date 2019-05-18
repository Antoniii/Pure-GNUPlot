# gnuplot filename.p

set terminal png size 650, 450

set xrange [0.01:1]
set yrange [0:20]

set xtics nomirror
set ytics nomirror

set output 'error_1.png'

set title "Damping Function" 
set title('Относительная погрешность')

set xlabel "Толщина z, мм" 
set ylabel "{/Symbol e}, %"

a = 0.15 
b = 0.01

c = 0.01
d = 0.005

c1 = 0.002

# vertical lines
set arrow from 0.22, graph 0 to 0.22, graph 1 nohead 
set arrow from 0.26, graph 0 to 0.26, graph 1 nohead 
set arrow from 0.04, graph 0 to 0.04, graph 1 nohead lt 0
#set arrow from 0.02, graph 0 to 0.02, graph 1 nohead lt 0

plot [0:1] (a*x+b)*100 lt 0 lw 3 lc rgb 'black' ti 'Интерференция', \
(c/x + d)*100 lw 3 lc rgb 'black' ti 'Триангуляция', \
5 notitle lw 1 lc rgb 'black', \
(c1/x + d)*100 lt 0 lw 2 lc rgb 'black' ti 'Триангуляция_{lim}'