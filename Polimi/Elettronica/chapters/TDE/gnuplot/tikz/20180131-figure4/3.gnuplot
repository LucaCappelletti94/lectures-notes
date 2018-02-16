set table "gnuplot/tikz/20180131-figure4/3.table"; set format "%.5f"
set samples 1000.0; set parametric; plot [t=2:9] [] [] log10(10**t), (t<log10(1/(0.3))? 0:-90) 
