# My Latex Template

## Get started
To get started, follow these simple steps:

1. Download a Latex IDE, like [TexMaker](http://www.xm1math.net/texmaker/) or 
2. Download the Latex framework, for example [MacTex](http://www.tug.org/mactex/mactex-download.html)
3. Run **sudo easy_install Pygments** to get minted running. Be **SURE** to have it linked in "/usr/local/bin".
3. Change the lualatex command to **lualatex -synctex=1 -interaction=nonstopmode --shell-escape %.tex**
4. Change the pdflatex command to **pdflatex -synctex=1 -interaction=nonstopmode --shell-escape %.tex**
5. [For Linux User] **sudo apt-get install texlive-lang-italian**
6. Install gnuplot to plot some particular graphs.
    - On mac install [brew](https://brew.sh/) and then proceed with **brew install gnuplot**.
    - On Linux proceed with **sudo apt-get install gnuplot-x11**

## Basic Structure
The template is structured as follows:

- *metadata.json*: where you can put data to be loaded everywhere.
- **general/**: folder for all the components that are used across all projects. Generally, it's a bad idea to edit this files. If you do, KNOW WHAT YOU ARE DOING. KEEP A BACKUP.
    + *metadataLoader.tex*: lua script to load metadata from the folder tree.
    + *footer.tex*: wrapper for the footer elements, like the acronyms.
    + *acronyms.tex*: collection of acronyms.
    + *packages.tex*: collection of shared packages.
    + *title.tex*: uniformed title page.
    + *pyro.ist*: graphical description for acronym page.
- **subject/**: folder with a single project data.
    + **images/**: folder for the images. Every image gets its path from here.
    + *metadata.json*: data specific to folder.
    + *main.tex*: main file.
    + *references.bib*: references file.
