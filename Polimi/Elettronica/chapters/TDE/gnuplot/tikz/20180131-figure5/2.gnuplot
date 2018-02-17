set table "gnuplot/tikz/20180131-figure5/2.table"; set format "%.5f"
set samples 101.0; set parametric; plot [t=0:3] [] [] log10(10**t),(t<log10(1/0.02)?20*log10(2):+20*log10(2*0.02)+20*log10(10**t))+(t<log10(1/((3*0.02)))?20*log10(1):+20*log10(1/((3*0.02)))-20*log10(10**t))
