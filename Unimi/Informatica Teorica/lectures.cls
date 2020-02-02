%
% Copyright 2018 Luca Cappelletti
%
% Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
%
% The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
%
\def\LectureNotesVersion{v1.0.5}
\newcommand{\defaultlanguage}{italian}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lectures}[2019/01/27 LaTeX document class for lectures notes.]
\LoadClass{report}

\DeclareOption{italian}{\renewcommand{\defaultlanguage}{italian}}
\DeclareOption{english}{\renewcommand{\defaultlanguage}{english}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

\RequirePackage{etoolbox}
\RequirePackage{geometry} % More rich support for page layout.
\geometry{
  a4paper,
  total={190mm,260mm},
  left=10mm,
  top=20mm,
}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\renewcommand{\familydefault}{\sfdefault}

% Disabling useless warnings.
\RequirePackage{silence}
\WarningFilter{latex}{You have requested package}
\WarningFilter{latex}{There were undefined references}
\WarningFilter{latexfont}{Size substitutions with differences}
\WarningFilter{latexfont}{Font shape}
\WarningFilter{latex}{Command}
\WarningFilter{biblatex}{Using fall-back BibTeX(8)}
\WarningFilter{biblatex}{Please (re)run BibTeX on the file(s)}
\WarningFilter{auxhook}{Cannot patch}
\WarningFilter{glossaries}{No \printglossary or \printglossaries found.}

\RequirePackage{amsmath,amsthm,amsfonts,amssymb,array,bm,xfrac}
\RequirePackage{fp,xparse,iftex}
\RequirePackage[english, italian]{babel} % Set up supported languages. Last one is default.
\RequirePackage[T1]{fontenc}  % Defines true type fonts
\RequirePackage{multicol}
\RequirePackage{emptypage}
\RequirePackage{microtype}
\RequirePackage{centernot}
\RequirePackage{framed}
\RequirePackage{float}
\RequirePackage{stmaryrd}
\RequirePackage{verbatim} 
\RequirePackage[colorlinks=true,urlcolor=blue,pdfpagelabels,hyperindex=false]{hyperref}  % Enable table of contents and links.
\RequirePackage{diagbox}% To make split cellboxes
\RequirePackage[x11names,table,dvipsnames]{xcolor}

\RequirePackage{subfiles} % To use subfiles without cruxifying saints
\RequirePackage{parskip} % To leave spaces in paragraphs without using \\
\RequirePackage{soul} % To cancel text with a line using the commant \st, to underline text and highlight.
\RequirePackage{fourier} % For icons such as \bomb, \noway, \danger and various others. For more info, go here: http://ctan.mirror.garr.it/mirrors/CTAN/fonts/fourier-GUT/doc/latex/fourier/fourier-orns.pdf
\RequirePackage{marvosym} % For icons such as \Cross

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% GRAPHICAL SETUP AND DESIGN              %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{sectsty} % Styles sectional headers
\RequirePackage{fancyhdr} % This allows for the headings in the chapters
\pagestyle{fancy} % This activates it

% Reset the page number position
\cfoot{}	% Make the center of the footer blank
\rfoot{\thepage} % Add the page number to the right corner of the page

\RequirePackage[avantgarde]{quotchap} % Custom style for chapters

% Reduce chapter name size and reserved blank space.
\makeatletter
\renewcommand{\@makechapterhead}[1]{%
  %\chapterheadstartvskip%
  {\size@chapter{\sectfont\raggedleft
        {\chapnumfont
          \ifnum \c@secnumdepth >\m@ne%
            \if@mainmatter\Huge\thechapter\else\phantom{\thechapter}%
            \fi\else\phantom{\thechapter}\fi
          \par\nobreak}%
        {\raggedleft\advance\leftmargin10em\interlinepenalty\@M #1\par}}
      \nobreak}}
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% FIGURES                                 %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{graphicx} % for images and generally graphics
\RequirePackage{caption} % enabling of nice captions
\RequirePackage{subcaption} % and subcaptions of images
\graphicspath{ {images/} } % We'll put all the images in the folder "images"

\setlength{\intextsep}{3pt plus 2pt minus 2pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% THE FOLLOWING CENTERS ALL FLOATING ITEMS BY DEFAULT   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\makeatletter
\g@addto@macro\@floatboxreset\centering
\makeatother

\makeatletter
\apptocmd\subcaption@minipage{\centering}{}{}
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% THE FOLLOWING SETS ALL FLOATING ITEMS TO H BY DEFAULT %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\makeatletter
\providecommand*\setfloatlocations[2]{\@namedef{fps@#1}{#2}}
\makeatother
\setfloatlocations{figure}{H}
\setfloatlocations{table}{H}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% COLOR                                   %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\red}[1]{
	\textcolor{red!90}{#1}
}

\newcommand{\blue}[1]{
	\textcolor{blue!90}{#1}
}

\newcommand{\error}[1]{
	\textcolor{red!90}{#1}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% CUSTOM MATH COMMANDS AND MACROS         %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\crs}{\text{\Cross}}
\newcommand*{\QED}{\hfill\ensuremath{\square}}%

\newcommand{\bra}[1]{\left\langle#1\right\rvert}
\newcommand{\ket}[1]{\left\lvert#1\right\rangle}
\newcommand{\ngle}[1]{\left\langle#1\right\rangle}
\newcommand{\braket}[2]{\left\langle#1\delimsize\vert#2\right\rangle}

\newcommand{\ceil}[1]{\left\lceil#1\right\rceil}
\newcommand{\floor}[1]{\left\lfloor#1\right\rfloor}

\newcommand{\abs}[1]{\left\lvert#1\right\rvert}
\newcommand{\norm}[1]{\left\lVert#1\right\rVert}
\newcommand{\rnd}[1]{\left(#1\right)}
\newcommand{\sqr}[1]{\left[#1\right]}
\newcommand{\ssqr}[1]{\llbracket#1\rrbracket}
\newcommand{\crl}[1]{\left\{#1\right\}}
\newcommand{\arity}[1]{\#\crl{#1}}
\renewcommand{\hat}{\widehat}
\renewcommand{\tilde}{\widetilde}
\let\oldbm\bm
\renewcommand{\bar}{\overline}
\renewcommand{\bm}[1]{\oldbm{\underline{#1}}}
\newcommand{\matr}[1]{\boldsymbol{#1}}
\newcommand{\bbm}[1]{\bar{\bm{#1}}}
\renewcommand{\geq}{\geqslant}
\renewcommand{\leq}{\leqslant}

\DeclareMathOperator{\var}{Var}
\DeclareMathOperator{\conv}{conv}
\DeclareMathOperator*{\argmin}{argmin}
\DeclareMathOperator*{\argmax}{argmax}
\DeclareMathOperator*{\mcd}{mcd}
\DeclareMathOperator*{\mcp}{mcp}
\DeclareMathOperator*{\Gr}{G=\rnd{V, E}}
%\DeclareMathOperator* this one allows to create environment that behave like sum or min

\def\zero{0}
\def\one{1}
\def\negative{-}
\def\positive{+}
\def\false{\zero}
\def\true{\one}
\newcommand{\C}{\mathbb{C}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\D}{\mathbb{D}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\bs}{\backslash}
\newcommand{\funcdef}[3]{#1:#2\longrightarrow #3}
\newcommand{\fdef}[2]{\funcdef{f}{#1}{#2}}

\renewcommand{\O}[1]{\mathcal{O}\rnd{#1}}

\NewDocumentCommand{\gmr}{m}{%
  %
  % #1 -> Value to build gomory cut upon
  %
  \rnd{#1-\floor{#1}}
}


\NewDocumentCommand{\buildVectorAliases}{m O{#1}}{
  %
  % #1 -> Letter to use for aliases
  % #2 -> Symbol to use as output
  %
  \expandafter\newcommand\csname bm#1\endcsname{\bm{#2}}%
  \expandafter\newcommand\csname bm#1o\endcsname{{\bm{#2}^*}}%
  \expandafter\newcommand\csname bbm#1\endcsname{\bbm{#2}}%
  \expandafter\newcommand\csname bm#1t\endcsname{{\bm{#2}^T}}%
  \expandafter\newcommand\csname bbm#1t\endcsname{{\bbm{#2}^T}}%
}

\renewcommand{\a}{\alpha}
\newcommand{\w}{\omega}
\newcommand{\e}{\varepsilon}

\buildVectorAliases{a}[\a]
\buildVectorAliases{w}[\w]
\buildVectorAliases{b}
\buildVectorAliases{c}
\buildVectorAliases{d}
\buildVectorAliases{e}
\buildVectorAliases{h}
\buildVectorAliases{g}
\buildVectorAliases{p}
\buildVectorAliases{u}
\buildVectorAliases{v}
\buildVectorAliases{x}
\buildVectorAliases{y}
\buildVectorAliases{z}

% Derivates
\NewDocumentCommand{\derivative}{m m}{
	\frac{d #1}{d #2}
}
\NewDocumentCommand{\pderivative}{m m}{
	\frac{\partial #1}{\partial #2}
}
% Matrix
\NewDocumentCommand{\Matrix}{m}{
	\begin{bmatrix}#1\end{bmatrix}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% CUSTOM PROBABILITY COMMANDS AND MACROS  %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NewDocumentCommand{\normal}{G{0} G{1}}{%
  \mathcal{N}\rnd{#1, #2}
}

\NewDocumentCommand{\prob}{m o G{} G{} G{}}{%
  %
  % #1 -> first term of probability
  % #2 (optional) -> operator beetween probabilities, defaults to conditioned probabilities.
  % #3 (optional) -> second term of probability, when conditioned
  % #4 (optional) -> subscript
  % #5 (optional) -> upscript
  %
  \ifblank{#3}{%
    \mathbb{P}_{#4}^{#5}\rnd{#1}
  }{%
    \IfNoValueTF{#2}{%
      \mathbb{P}_{#4}^{#5}\rnd{\left. #1 \;\right\rvert\; #3}
    }{%
      \mathbb{P}_{#4}^{#5}\rnd{#1\;#2\;#3}
    }
  }
}

\NewDocumentCommand{\mean}{m o G{} G{} G{}}{%
  %
  % #1 -> first term of mean
  % #2 (optional) -> operator beetween events, defaults to conditioned probabilities.
  % #3 (optional) -> second term of mean, when conditioned
  % #4 (optional) -> subscript
  % #5 (optional) -> upscript
  %
  \ifblank{#3}{%
    \mathbb{E}_{#4}^{#5}\sqr{#1}
  }{%
    \IfNoValueTF{#2}{%
      \mathbb{E}_{#4}^{#5}\sqr{\left. #1 \;\right\rvert\; #3}
    }{%
      \mathbb{E}_{#4}^{#5}\sqr{#1\;#2\;#3}
    }
  }
}

\NewDocumentCommand{\Var}{m o g}{%
  %
  % #1 -> first term of mean
  % #2 (optional) -> operator beetween events, defaults to conditioned probabilities.
  % #3 (optional) -> second term of mean, when conditioned
  %
  \IfNoValueTF{#3}{%
    \text{Var}\rnd{#1}
  }{%
    \IfNoValueTF{#2}{%
      \text{Var}\rnd{\left. #1 \;\right\rvert\; #3}
    }{%
      \text{Var}\rnd{#1\;#2\;#3}
    }
  }
}

\NewDocumentCommand{\tprob}{m o g}{%
  %
  % Alias of prob that textualizes the events.
  %
  \IfNoValueTF{#3}{%
    \prob{\text{#1}}
  }{%
    \IfNoValueTF{#2}{%
      \prob{\text{#1}}{\text{#3}}
    }{%
      \prob{\text{#1}}[#2]{\text{#3}}
    }
  }
}

\NewDocumentCommand{\bayes}{m m}{%
  %
  % #1 -> event X
  % #2 -> event Y
  %
  \prob{#1}{#2} &= \frac{\prob{#2}{#1}\prob{#1}}{
    \prob{#2}
  }%
}

\NewDocumentCommand{\tbayes}{m m}{%
  %
  % Textual alias for bayes
  %
  \bayes{\text{#1}}{\text{#2}}
}

\NewDocumentCommand{\totProb}{m m g g g g g g g}{%
  %
  % #1 (mandatory) -> event E
  % #2 (mandatory) -> event F_1
  % #3 (optional)  -> event F_2
  % #4 (optional)  -> event F_3
  % #5 (optional)  -> event F_4
  % #6 (optional)  -> event F_5
  % #7 (optional)  -> event F_6
  % #8 (optional)  -> event F_7
  % #9 (optional)  -> event F_8
  %
  \prob{#1} &= \prob{#1}{#2}\prob{#2}%
  \IfValueT{#3}{%
    +\prob{#1}{#3}\prob{#3}%
  }%
  \IfValueT{#4}{%
    +\prob{#1}{#4}\prob{#4}%
  }%
  \IfValueT{#5}{%
    +\prob{#1}{#5}\prob{#5}%
  }%
  \IfValueT{#6}{%
    +\prob{#1}{#6}\prob{#6}%
  }%
  \IfValueT{#7}{%
    +\prob{#1}{#7}\prob{#7}%
  }%
  \IfValueT{#8}{%
    +\prob{#1}{#8}\prob{#8}%
  }%
  \IfValueT{#9}{%
    +\prob{#1}{#9}\prob{#9}%
  }%
}

\NewDocumentCommand{\ttotProb}{m m g g g g g g g}{%
  \tprob{#1} &= \tprob{#1}{#2}\tprob{#2}%
  \IfValueT{#3}{%
    +\tprob{#1}{#3}\tprob{#3}%
  }%
  \IfValueT{#4}{%
    +\tprob{#1}{#4}\tprob{#4}%
  }%
  \IfValueT{#5}{%
    +\tprob{#1}{#5}\tprob{#5}%
  }%
  \IfValueT{#6}{%
    +\tprob{#1}{#6}\tprob{#6}%
  }%
  \IfValueT{#7}{%
    +\tprob{#1}{#7}\tprob{#7}%
  }%
  \IfValueT{#8}{%
    +\tprob{#1}{#8}\tprob{#8}%
  }%
  \IfValueT{#9}{%
    +\tprob{#1}{#9}\tprob{#9}%
  }%
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% UNITS                                   %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Units macro to be able to do \unit{m} to get \leftm\right] and \unit{m}{s} to get \left[\frac{m}{s}\right]
\NewDocumentCommand{\unit}{m G{}}{
	\ifblank{#2}{
		\sqr{#1}
	}{
		\sqr{\frac{#1}{#2}}
	}
}

\def\celsius{
  ^\circ C
}

\def\kelvin{
  ^\circ K
}

\def\fahrenheit{
  ^\circ F
}

\def\hz{
  Hz
}
\def\db{
  dB
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% SCRIPTS RELATED TO TABLES AND ARRAYS    %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% automaticall apply mathmode to column
\newcolumntype{L}{>{$}l<{$}}
\newcolumntype{C}{>{$}c<{$}}
\newcolumntype{R}{>{$}r<{$}}
\renewcommand*{\arraystretch}{1.25} % Stretching arrays

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
%     BIBLATEX AND BIBLIOGRPHY            %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[style=authoryear,sorting=ynt, backend=bibtex]{biblatex} % Package to handle the bibliography
\nocite{*} % This allows for having entried in the bib file that do not have to be necesseraly used

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
%     MINTED                              %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[cache=true]{minted} % For highlighting code
\RequirePackage[algoruled,linesnumbered,titlenumbered]{algorithm2e} % To highlight pseudocode
\definecolor{mintedbackground}{rgb}{0.95,0.95,0.95}
\setminted{
  bgcolor=mintedbackground,
  fontfamily=tt,
  linenos=true,
  numberblanklines=true,
  numbersep=5pt,
  gobble=0,
  frame=leftline,
  framerule=0.4pt,
  framesep=2mm,
  funcnamehighlighting=true,
  tabsize=4,
  obeytabs=false,
  mathescape=false
  samepage=false, %with this setting you can force the list to appear on the same page
  showspaces=false,
  showtabs =false,
  texcl=false,
}

% CDQUOTES HAS TO BE LOADED AFTER THE MINTED
\RequirePackage{csquotes} % Package required by babel AND polyglossia.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
%     GRAPHS OF VARIOUS KIND              %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{pgfplots} % to draw 3d graphs
\pgfplotsset{compat=1.14}
\RequirePackage{tikz}
\RequirePackage{tikz-qtree}
\RequirePackage{relsize}
\RequirePackage{circuitikz}
\RequirePackage{bodegraph}
\RequirePackage{adigraph}

\ctikzset{tripoles/mos style/arrows}
\ctikzset{tripoles/pmos style/emptycircle}
\usetikzlibrary{shapes,arrows,calc,positioning,matrix}

\pgfplotsset{samples=60,shader=interp,grid=both}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% LISTS AND ENUMERATIONS                  %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{paralist} % For compacted enumerations
\RequirePackage[shortlabels]{enumitem} % For a todo check list
\newlist{todolist}{itemize}{2} % For a  todo check list
% \setlist{nolistsep}
\setlist[todolist]{label=$\square$}  % For a todo check list


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% THEOREMS: COLORS AND CUSTOM ENVIRONMENT %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\theoremstyle{definition} % Sets the theorem style without italic
\usepackage{tcolorbox}
\NewDocumentCommand{\createtheorem}{m m m m m}{%
    % #1 -> environment name
    % #2 -> italian name
    % #3 -> background color
    % #4 -> border color
    % #5 -> title color
    
    \newtcolorbox[auto counter,number within=chapter]{#1}[1][]{colback=#3,colframe=#4,coltitle=#5,fonttitle=\bfseries,parbox=false,title=#2~\thetcbcounter~|~##1}
}

\createtheorem{axiom}{Assioma}{Gold1!10}{Gold1!60}{black}
\createtheorem{goal}{Obbiettivo}{Goldenrod1!10}{Goldenrod1!50}{black}

\createtheorem{definition}{Definizione}{Red2!10}{Red2!40}{black}

\createtheorem{fact}{Fatto}{Green3!10}{Green3!30}{black}
\createtheorem{theorem}{Teorema}{Chartreuse2!10}{Chartreuse3!30}{black}
\createtheorem{lemma}{Lemma}{Chartreuse3!10}{Chartreuse3!40}{black}

\createtheorem{corollary}{Corollario}{Sienna2!10}{Sienna2!60}{black}
\createtheorem{property}{Proprietà}{Sienna2!10}{Sienna2!90}{white}

\createtheorem{proposition}{Proposizione}{SpringGreen3!10}{SpringGreen3!30}{black}
\createtheorem{observation}{Osservazione}{Firebrick2!10}{Firebrick2!40}{black}

\createtheorem{conclusion}{Conclusione}{SteelBlue3!10}{SteelBlue3!90}{black}
\createtheorem{generalization}{Generalizzazione}{LavenderBlush3!10}{LavenderBlush3}{black}

\createtheorem{problem}{Problema}{Red1!10}{Red1!60}{white}
\createtheorem{example}{Esempio}{MediumPurple3!10}{MediumPurple3!40}{black}

\createtheorem{solution}{Soluzione}{DodgerBlue3!10}{DodgerBlue3!30}{black}
\createtheorem{analysis}{Analisi}{DeepPink2!10}{DeepPink2!30}{black}
\createtheorem{complexity}{Complessità}{Turquoise4!10}{Turquoise4}{black}

\createtheorem{proofWrapper}{Dimostrazione}{DarkOrchid4!10}{DarkOrchid4!30}{black}
\renewenvironment{proof}{\begin{proofWrapper}}{\end{proofWrapper}}

%
% THE FOLLOWING CODE ADDS BOLD TO THE THEOREM NAME
%

\makeatletter
\def\th@plain{%
  \thm@notefont{}% same as heading font
  \itshape % body font
}
\def\th@definition{%
  \thm@notefont{}% same as heading font
  \normalfont % body font
}
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% UTILITIES                               %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\makeatletter
\newcommand*{\rom}[1]{\expandafter\@slowromancap\romannumeral #1@}
\makeatother

\def\checkmark{\tikz\fill[scale=0.4](0,.35) -- (.25,0) -- (1,.7) -- (.25,.15) -- cycle;}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                         %
% MAKETITLE OVERRIDE                      %
%                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NewDocumentCommand{\TitlePageProcessAuthor}{m}{%
  %
  % #1 -> Name of author
  %
  \ifblank{#1}{}{
    \textbf{#1}\\
  }
}

\NewDocumentCommand{\TitlePageProcessProfessor}{m}{%
  %
  % #1 -> Name of author
  %
  \ifblank{#1}{}{
    Prof.\,#1\\
  }
}

\NewDocumentCommand{\TitlePageProcessSpeaker}{m}{%
  %
  % #1 -> Name of author
  %
  \ifblank{#1}{}{
    #1\\
  }
}


\NewDocumentCommand{\TitlePageProcessAuthors}{> { \SplitList{,} } m}{%
  %
  % #1 -> List of names
  %
  \ProcessList{#1}{\TitlePageProcessAuthor}
}

\NewDocumentCommand{\TitlePageProcessProfessors}{> { \SplitList{,} } m}{%
  %
  % #1 -> List of names
  %
  \ProcessList{#1}{\TitlePageProcessProfessor}
}

\NewDocumentCommand{\TitlePageProcessSpeakers}{> { \SplitList{,} } m}{%
  %
  % #1 -> List of names
  %
  \ProcessList{#1}{\TitlePageProcessSpeaker}
}

\RenewDocumentCommand{\maketitle}{m G{} G{} G{} G{} G{} G{} G{} G{}}{%
  %
  % #1 -> Title
  % #2 -> Authors
  % #3 -> Professors
  % #4 -> Speakes
  % #5 -> Year
  % #6 -> CFU
  % #7 -> Degree
  % #8 -> University
  % #9 -> Country
  %
  \hypersetup{pageanchor=false}
  \begin{titlepage}
  \begin{center}
      \textbf{\MakeUppercase{\large{#1}}}\\
      \vspace{1em}
      \TitlePageProcessAuthors{#2}
      \TitlePageProcessProfessors{#3}
      \TitlePageProcessSpeakers{#4}
      \ifblank{#6}{}{
        \vspace{1em}
        \textbf{\MakeUppercase{#6 CFU}}\\
        \vspace{1em}
      }
      \vfill

      \IfFileExists{images/logo.png}{
        \begin{figure}
          \includegraphics[width=0.1\textwidth]{logo}
        \end{figure}
      }{}
      \ifblank{#5}{}{
        #5\\% year
      }
      \ifblank{#7}{}{
        #7\\
      }
      \ifblank{#8}{}{
        #8\\
      }
      \ifblank{#9}{}{
        #9\\
      }
      \today
  \end{center}
  \end{titlepage}
  \hypersetup{pageanchor=true}
}

\let\oldtableofcontents\tableofcontents

\RenewDocumentCommand{\tableofcontents}{}{
	{\hypersetup{hidelinks}\oldtableofcontents}
}

\NewDocumentCommand{\DisableTikz}{}{%
    \newif\ifshowtikz
    \showtikztrue
    \showtikzfalse   % <---- comment/uncomment that line
    
    \let\oldtikzpicture\tikzpicture
    \let\oldendtikzpicture\endtikzpicture
    
    \renewenvironment{tikzpicture}{%
        \ifshowtikz\expandafter\oldtikzpicture%
        \else\comment%   
        \fi
    }{%
        \ifshowtikz\oldendtikzpicture%
        \else\endcomment%
        \fi
    }
}
