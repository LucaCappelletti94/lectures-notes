set table "gnuplot/tikz/20180131-figure5/3.table"; set format "%.5f"
set samples 50.0; set parametric; plot [t=0:3] [] [] log10(10**t),--180/3.1415957*atan(0.02*10**t)+-180/3.1415957*atan((3*0.02)*10**t)
