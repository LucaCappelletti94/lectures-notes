set table "gnuplot/tikz/20180131-figure5/1.table"; set format "%.5f"
set samples 50.0; set parametric; plot [t=0:3] [] [] log10(10**t),20*log10(abs(2*sqrt(1+(0.02*10**t)**2)))+20*log10(abs(1/sqrt(1+((3*0.02)*10**t)**2)))
