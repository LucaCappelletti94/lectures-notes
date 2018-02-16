set table "gnuplot/tikz/20180131-figure4/2.table"; set format "%.5f"
set samples 50.0; set parametric; plot [t=2:9] [] [] log10(10**t), 20*log10(abs(6/sqrt(1+(0.3*10**t)**2))) 
