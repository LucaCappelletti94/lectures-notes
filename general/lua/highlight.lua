if metadata["highlight"] then
  tex.print("\\renewcommand{\\textbf}[1]{{\\oldtextbf{\\colorbox{LightSalmon1}{#1}}}}")
  tex.print("\\renewcommand{\\textit}[1]{{\\oldtextit{\\colorbox{Gold1}{#1}}}}")
  tex.print("\\renewcommand{\\emph}[1]{{\\oldemph{\\colorbox{Gold1}{#1}}}}")
end