# Various Notes
## Crafted with ~~Latex~~ Love
All are available to the public, but please take them with a grain of salt :)
These are notes from courses that we might be currently following, so they might not be complete.

## Polytechnic University of Milan

- [Meccanica 🇮🇹](https://github.com/LucaCappelletti94/various-notes/blob/master/Polimi/Meccanica/Temi%20di%20Meccanica%20v1.1.pdf)

## University of Milan
- [Analisi di dati su larga scala 🇮🇹](https://github.com/LucaCappelletti94/various-notes/blob/master/Unimi/Analisi%20di%20dati%20su%20larga%20scala/main.pdf)
- [Complementi di ricerca operativa 🇮🇹](https://github.com/LucaCappelletti94/various-notes/blob/master/Unimi/Complementi%20di%20ricerca%20operativa/main.pdf)
- [Metodi e modelli per le decisioni 🇮🇹](https://github.com/LucaCappelletti94/various-notes/blob/master/Unimi/Metodi%20e%20Modelli%20per%20le%20decisioni/main.pdf)
- [Ricerca operativa 🇮🇹](https://github.com/LucaCappelletti94/various-notes/blob/master/Unimi/Ricerca%20operativa/main.pdf)
- [Sistemi intelligenti 🇮🇹](https://github.com/LucaCappelletti94/various-notes/blob/master/Unimi/Sistemi%20Intelligenti/main.pdf)

## Various
Notes are currently available about:
- [Feynman Diagrams Introduction 🇬🇧](https://github.com/LucaCappelletti94/qed-notes/blob/master/Various/Feynman%20Diagrams/main.pdf)

Feel absolutely **FREE** to correct my errors.

## Contributors are WELCOME!
If you feel like sharing your work, helping us to offer everyone better notes, feel free to either ask to be added as contributor or to go for a pull request!

Here's what you need to get started:

### Setup for macOs users
So, if you've never dealt with the bash, here's a setup that starts from the beginning. If you're alredy a power user, you can skip these commands and go to the next part.
#### Installing brew, anaconda and git
So, [brew](https://brew.sh/) is this pretty awesome package manager for macOs, similar to **apt-get** in many ways. Here's how you get it. You need to have [Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12) installed to proceed.
Open up the terminal and proceed with these commands:
```sh
# We Install the command line tools
xcode-select --install
# We accept the developer license
sudo xcodebuild -license accept
# We install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# We run a couple checks on brew
brew doctor
brew update
# We install Anaconda
# If the command fails (it's a big file), try downloading from https://www.anaconda.com/download/#macos
brew cask install anaconda
# We install git
brew install git
# We install a git IDE
brew cask install gitkraken
```
#### Setting up everything for latex.
Here starts the actual setup for Latex:
```sh
# We install the MacTex.
# If the command fails (it's a big file), try downloading from http://www.tug.org/mactex/mactex-download.html
brew cask install mactex-no-ghostscript
# We install a LaTex IDE
brew cask install texmaker
# We install a couple of packages we're gonna need for LaTex
# Pygments handles highlighting
# It should already be installed with Anaconda, so you shouldn't need to run this command.
# sudo pip install Pygments
# We need though to create a link:
sudo ln -s /anaconda3/bin/pygmentize /usr/local/bin/pygmentize
# Gnuplot draws nice graphs
brew install gnuplot
```
Now you just need to clone the repo and get working!

## Latex template
If you like the way I setup my notes, [here](https://github.com/LucaCappelletti94/various-notes/tree/master/Template) you can find a template you can play with.

For any question, contact me either here or by mail at "*cappelletti (dot) luca (ninetyfour) at gmail (dot) com*"
