set datafile separator ","
set title 'Latency distribution' noenhanced
set terminal png size 1280,1024
set grid
unset xtics
set ylabel 'Latency (μs)'
set logscale x
set key top left
set style line 1 lt 1 lw 3 pt 3 linecolor rgb "red"
set output '/Users/gbarnett/git/hazelcast-simulator/atomiclong-3node-member/atomicreference/latency/latency_distribution_sixteenKbWrite.png'
plot '/Users/gbarnett/git/hazelcast-simulator/src/simulator/xlabels.csv' notitle with labels center offset 0, 1.5 point,\
   "/Users/gbarnett/git/hazelcast-simulator/atomiclong-3node-member/atomicreference/data/latency_distribution_sixteenKbWrite_1.data" using 1:2 title "" lt rgb "red" with lines, \
