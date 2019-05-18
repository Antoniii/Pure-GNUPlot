# gnuplot filename.p

set terminal png size 650, 450

set xrange [0.01:1]
set yrange [0:20]

set xtics nomirror
set ytics nomirror

set output 'error2_1.png'

set title "Damping Function" #font "Times-Roman, 14"
set title('Относительная погрешность')

set xlabel "Толщина z, мм" #font "Times-Roman, 14" 
set ylabel "{/Symbol e}, %"

a = 0.15 
b = 0.01

c = 0.01
d = 0.005

# vertical lines
set arrow from 0.1, graph 0 to 0.1, graph 1 nohead lt 0
set arrow from 0.6, graph 0 to 0.6, graph 1 nohead lt 0

#set term svg
#set out 'file.svg'
set style fill transparent pattern 4 # для закрашивания области под графиком

set label "Диапазон измерений" left at 0.2, 13.2 offset .5, 0
set arrow from 0.45, 12.8 to 0.23, 3 lt -1 lw 2 #front size 10, 15

set label "A" left at 0.11, 10.5
set label "D" left at 0.57, 10.5
set label "B" left at 0.11, -0.66
set label "C" left at 0.57, 0.66
set label "E" left at 0.23, 5.2

plot [0:1] (a*x+b)*100 lt 0 lw 1 lc rgb 'black' ti 'Интерференция' with filledcurves above y1 = 0, \
(c/x + d)*100 lt -1 lw 1 lc rgb 'black' ti 'Триангуляция' with filledcurves above y1 = 0, \
10 ti 'Погрешность_{max}' lw 1 lc rgb 'black' lt 0