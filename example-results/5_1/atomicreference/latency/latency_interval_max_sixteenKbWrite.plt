set title 'Interval Max' noenhanced
set style data lines
set datafile separator ","
set terminal png size 1280,1024
set grid
set key below
set xdata time
set timefmt "%s"
offset = 0
t0(x)=(offset=($0==0) ? x : offset, x - offset)
set xlabel 'Time minutes:seconds'
set ylabel 'Latency (μs)'
set output '/Users/gbarnett/git/hazelcast-simulator/atomiclong-3node-member/atomicreference/latency/latency_interval_max_sixteenKbWrite.png'
plot \
   '/Users/gbarnett/git/hazelcast-simulator/atomiclong-3node-member/atomicreference/data/latency_interval_max_sixteenKbWrite_1.data' using (t0(timecolumn(1))):2 title "" lt rgb "red", \
