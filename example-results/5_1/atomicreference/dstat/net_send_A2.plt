set title 'Net Send' noenhanced
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
set ylabel 'Sending/sec'
set format y '%.1s%cB'
set output '/Users/gbarnett/git/hazelcast-simulator/atomiclong-3node-member/atomicreference/dstat/net_send_A2.png'
plot \
   '/Users/gbarnett/git/hazelcast-simulator/atomiclong-3node-member/atomicreference/data/net_send_A2_1.data' using (t0(timecolumn(1))):2 title "08-09-2023_14-33-47" noenhanced lt rgb "red", \
   '/Users/gbarnett/git/hazelcast-simulator/atomiclong-3node-member/atomicreference/data/net_send_A2_2.data' using (t0(timecolumn(1))):2 title "08-09-2023_14-39-06" noenhanced lt rgb "blue", \
   '/Users/gbarnett/git/hazelcast-simulator/atomiclong-3node-member/atomicreference/data/net_send_A2_3.data' using (t0(timecolumn(1))):2 title "08-09-2023_14-44-21" noenhanced lt rgb "forest-green", \
   '/Users/gbarnett/git/hazelcast-simulator/atomiclong-3node-member/atomicreference/data/net_send_A2_4.data' using (t0(timecolumn(1))):2 title "08-09-2023_14-49-36" noenhanced lt rgb "orchid", \
   '/Users/gbarnett/git/hazelcast-simulator/atomiclong-3node-member/atomicreference/data/net_send_A2_5.data' using (t0(timecolumn(1))):2 title "08-09-2023_14-54-51" noenhanced lt rgb "grey", \
