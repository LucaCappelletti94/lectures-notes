set table "gnuplot/tikz/20180131-figure5/4.table"; set format "%.5f"
set samples 201.0; set parametric; plot [t=0:3] [] [] log10(10**t),-(t<log10(1/(0.02))? 0:-90)+(t<log10(1/((3*0.02)))? 0:-90)
