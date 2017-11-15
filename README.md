# Various Notes
## Crafted with ~~Latex~~ Love
All are available to the public, but please take them with a grain of salt :)
These are notes from courses that we might be currently following, so they might not be complete.

## Polytechnic University of Milan

- [Meccanica 🇮🇹](https://github.com/LucaCappelletti94/various-notes/blob/master/Polimi/Meccanica/main.pdf)
- [Elettronica 🇮🇹](https://github.com/LucaCappelletti94/various-notes/blob/master/Polimi/Elettronica/main.pdf)
- [Sistemi Informativi 🇮🇹](https://github.com/LucaCappelletti94/various-notes/blob/master/Polimi/Sistemi%20Informativi/main.pdf)

## University of Milan
- [Analisi di dati su larga scala 🇮🇹](https://github.com/LucaCappelletti94/various-notes/blob/master/Unimi/Analisi%20di%20dati%20su%20larga%20scala/main.pdf)
- [Complementi di ricerca operativa 🇮🇹](https://github.com/LucaCappelletti94/various-notes/blob/master/Unimi/Complementi%20di%20ricerca%20operativa/main.pdf)
- [Metodi e modelli per le decisioni 🇮🇹](https://github.com/LucaCappelletti94/various-notes/blob/master/Unimi/Metodi%20e%20Modelli%20per%20le%20decisioni/main.pdf)
- [Ricerca operativa 🇮🇹](https://github.com/LucaCappelletti94/various-notes/blob/master/Unimi/Ricerca%20operativa/main.pdf)
- [Sistemi intelligenti 🇮🇹](https://github.com/LucaCappelletti94/various-notes/blob/master/Unimi/Sistemi%20Intelligenti/main.pdf)

## Various
Notes are currently available about:
- [Feynman Diagrams Introduction 🇬🇧](https://github.com/LucaCappelletti94/qed-notes/blob/master/Various/Feynman%20Diagrams/main.pdf)
- [I Giovani ed il Lavoro 🇮🇹](https://github.com/LucaCappelletti94/various-notes/blob/master/Various/I%20Giovani%20ed%20il%20Lavoro/main.pdf)

Feel absolutely **FREE** to correct my errors.

## Contributors are WELCOME!
If you feel like sharing your work, helping us to offer everyone better notes, feel free to either ask to be added as contributor or to go for a pull request!

Here's what you need to get started:

### Setup for macOs users
Luca wrote a set of small tutorials just for you:
- [MacOs quick setup 🚀](https://gist.github.com/LucaCappelletti94/c9ead039ecaf08dfaf8b975862d9d15e): getting started with macOS in a quick bashy way.
- [Sublime Text on Steroids 💪](https://gist.github.com/LucaCappelletti94/d12c4c003e126f864402a887339fa912): a quick guide to get a super sublime text.
- [Firing up LaTex on macOS 🔥](https://gist.github.com/LucaCappelletti94/920186303d71c85e66e76ff989ea6b62): a setup for making latex just work.

### Basic Structure
The project is structured as follows:

- *metadata.json*: where you can put data to be loaded everywhere.
- **packages/**: .sty files that are hard to find.
- **general/**: folder for all the components that are used across all projects. Generally, it's a bad idea to edit this files. If you do, KNOW WHAT YOU ARE DOING. KEEP A BACKUP.
    + *footer.tex*: wrapper for the footer elements, like the acronyms.
    + *custom_math_commands.tex*: wrapper for custom math commands.
    + *acronyms.tex*: collection of acronyms.
    + *packages.tex*: collection of shared packages and scripts.
    + **lua/**: a folder with our lua scripts.
        * *deapnessGuesser.tex*: script to automatically guess the deapness of the subfile you are currently compiling, so that lua scripts can be referenced from anywhere.
        * *highlight.lua*: switch that loads from *metadata.json* and enables or not the highlight of **emph**, **textit** and **textbf**.
        * *languageSwitch.tex*: switch that loads from *metadata.json* and enables or not the languages texts.
        * *metadataLoader.lua*: loads and merge recursively metadatas.
        * *title.lua*: title page built with lua. 
    + **figures/**: a folder with the .tex files relative to automations with figures.
        * *center_all_floats.tex*: automatically centers tables and figures (generally ll floats), including subfigures.
        * *default_figures_location.tex*: automatically sets **H** as the default location for figures and tables.
        * *packages_for_figures.tex*: specific packages for figures.
    + *title.tex*: uniformed title page.
    + *pyro.ist*: graphical description for acronym page.
- **subject/**: folder with a single project data.
    + **images/**: folder for the images. Every image gets its path from here.
    + *metadata.json*: data specific to folder.
    + *main.tex*: main file.
    + *references.bib*: references file.

## Latex template
If you like the way we setup our notes, [here](https://github.com/LucaCappelletti94/various-notes/tree/master/template) you can find a template you can play with. Notify us when you use it, as sometimes we need to update it (last update on 15/11/2017).

For any question, contact me either here or by mail at "*cappelletti (dot) luca (ninetyfour) at gmail (dot) com*"
