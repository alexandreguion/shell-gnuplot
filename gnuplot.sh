FILE=pp.gnu

rm $FILE

cat>>$FILE <<EOF
set terminal X11
set key bottom left font "Times-Roman,20" 
set key spacing 1.05
set grid ytics lc rgb "#bbbbbb" lw 1 lt 0
set grid xtics lc rgb "#bbbbbb" lw 1 lt 0
set auto xy
set xlabel offset 0,-2 "" font "Times-Roman, 30"
set ylabel offset -4,0 "" font "Times-Roman, 30"
#plot 'tpl-6-90' u (\$1):(\$3) title "6-90"
EOF
ub=5.
for levels in 6 7 8 9
do
	        for jj in 5 6 7 8
		do
			for kk in 0 1.25 2.5 3.75 5 6.25 7.5 8.75
			do
				angles=$jj$kk
cat>>$FILE <<EOF
#replot 'tpl-$levels-$angles-$ub' u (\$1):(\$3)  title "$levels-$angles-$ub"
EOF
			done
		done
done

cat>>plot222.gnu <<EOF
set terminal postscript enhanced color
set output "z-tpl.ps"
replot
EOF
