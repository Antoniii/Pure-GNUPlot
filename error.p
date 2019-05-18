# gnuplot filename.p

set terminal png size 650, 450

set xrange [0.01:1]
set yrange [0:20]

#set border 3
set xtics nomirror
set ytics nomirror

set output 'error.png'

set title "Damping Function" font "Times-Roman, 14"
set title('Относительная погрешность')

set xlabel "Толщина z, мм" font "Times-Roman, 14" 
set ylabel "{/Symbol e}, %"

a = 0.15 
b = 0.01

c = 0.01
d = 0.005

# vertical lines
set arrow from 0.1, graph 0 to 0.1, graph 1 nohead lt 0
set arrow from 0.6, graph 0 to 0.6, graph 1 nohead lt 0
set arrow from 0.22, graph 0 to 0.22, graph 1 nohead 
set arrow from 0.26, graph 0 to 0.26, graph 1 nohead 

plot [0:1] (a*x+b)*100 lt 0 lw 3 lc rgb 'black' ti 'Интерференция', \
(c/x + d)*100 lw 3 lc rgb 'black' ti 'Триангуляция', \
5 ti 'max_1' lw 1 lc rgb 'black', 10 ti 'max_2' lw 1 lc rgb 'black' lt 0
# notitle -- turn off legend