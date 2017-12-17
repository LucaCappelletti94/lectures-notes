function vspace()
  tex.print("\\vspace{1em}")
end

function bsprint(txt)
  tex.print(txt.."\\\\")
end

--[[Load data into variables to simplify code afterwards]]
local title = metadata["title"]
local cfu = metadata["cfu"]
local year = metadata["year"]
local degree = metadata["degree"]
local university = metadata["university"]
local country = metadata["country"]
local notesType = metadata["notesType"]
local professors = metadata["professors"]
local speakers = metadata["speakers"]
local authors = metadata["authors"]

vspace()

bsprint("\\oldtextbf{\\MakeUppercase{\\large{"..title.."}}}")

vspace()

for key, value in pairs(professors) do
  bsprint('Prof. '..value["name"] .. " " .. value["surname"])
end

for key, value in pairs(speakers) do
  bsprint(value["name"] .. " " .. value["surname"])
end

if cfu > 0 then
  bsprint(cfu.." CFU")
end

if cfu > 0 or table.getn(professors) > 0 or speakers.getn(professors) > 0 then
  vspace()
end

for key, value in pairs(authors) do
  bsprint('\\oldtextbf{'..value["name"] .. " " .. value["surname"].."}")
end

tex.print("\\vfill")

bsprint(notesType)
bsprint(year)

vspace()

tex.print("\\begin{figure}\\includegraphics[width=0.1\\textwidth]{logo}\\end{figure}")

vspace()

bsprint(degree)
bsprint(university)
bsprint(country)

tex.print("\\today")