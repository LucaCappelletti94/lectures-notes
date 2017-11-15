
# coding: utf-8

# In[1]:


import glob
import os
import subprocess
from tqdm import tqdm
from pprint import pprint

files = glob.glob("*/*/main.tex")

pprint(files)


# In[2]:


luaLatexCommand = "lualatex -synctex=1 -interaction=nonstopmode --shell-escape main.tex"
pdfLatexCommand = "pdflatex -synctex=1 -interaction=nonstopmode --shell-escape main.tex"
bibtexCommand = "bibtex main.aux"

owd = os.getcwd()

for file in tqdm(files):
    os.chdir(os.path.dirname(file))
    subprocess.call((pdfLatexCommand).split(" ")) # To create initial bib / latex / index / etc... files
    subprocess.call((bibtexCommand).split(" ")) # To actually compute bibliography
    subprocess.call((pdfLatexCommand).split(" ")) # To use the bibliography and compute refs
    subprocess.call((pdfLatexCommand).split(" ")) # To use computed refs and update the contents/table/images list
    subprocess.call((luaLatexCommand).split(" ")) # To compile the lua part and ready files for production
    os.chdir(owd)

