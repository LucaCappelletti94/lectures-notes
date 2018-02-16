set table "gnuplot/tikz/20180131-figure4/4.table"; set format "%.5f"
set samples 50.0; set parametric; plot [t=2:9] [] [] log10(10**t), -180/3.1415957*atan(0.3*10**t) 
