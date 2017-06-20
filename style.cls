% W A R N I N G: STAY OUT. Modify style.cls without consulting me, and you WILL answer to me. -Bryan


%\\\\\\\\\\\Document Properties\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

\documentclass[11pt,a4paper,reqno,titlepage,twoside,openright]{report} %twoside,openright together forces a new chapter to begin on a right side
\raggedbottom
\usepackage[margin=6pc]{geometry}
\usepackage[utf8]{inputenc}
\usepackage{amsfonts}
\usepackage{amsmath}
\usepackage{mathtools}
\usepackage{amssymb}
\usepackage{graphicx}
\usepackage{tabularx}
\usepackage{float}
\usepackage{booktabs}
\usepackage{titlesec,color}
\usepackage{caption}
\usepackage{enumitem}
\setlist{itemsep=.5pt}%added by steph for more compact lists
\usepackage{subcaption}
\usepackage{pdfpages}
\usepackage[hyphens]{url}
\usepackage{array}
\usepackage{notoccite}
\usepackage[symbol]{footmisc}
\usepackage{listings}
\usepackage{siunitx}
\usepackage[toc, titletoc]{appendix}
\usepackage{fancyhdr} %header package
\usepackage{comment} %begincomment + endcomment package
\usepackage{tablefootnote} %footnotes within a table
\usepackage{hyperref}
\usepackage{cleveref} %reference to multiple figures at the same time: \Cref{fig1,fig2,fig3} depicts Figures 1 to 3.
\usepackage{multirow}
\usepackage{longtable}
\usepackage[table]{xcolor} %Adding colors to table cells
\usepackage{adjustbox} %Shrinking table sizes so tables can fit within in a page
\usepackage{eurosym}
\usepackage{pifont} %for checkmarks
\usepackage{arydshln} %Adding dashlines in arrays \hdashline


%\\\\\\\\\\\Document Properties\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

%\usepackage[hidelinks, pdftitle={High Speed Wind Tunnel Report Group 36}, pdfauthor={W. Broeders, et. al}, pdfsubject={AE2130-III Aerodynamics II}]{hyperref}

%\\\\\\\\\\\Setting-up Nomenclature Classes\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

\usepackage{nomencl}
\makenomenclature

\usepackage{etoolbox}
\renewcommand\nomgroup[1]{%
	\item[\bfseries
	\ifstrequal{#1}{G}{Greek Symbols}{%
		\ifstrequal{#1}{B}{Roman Symbols}{%
			%ADD MORE CLASSES HERE (Order does not matter, LaTeX will sort classes Based on !Class Reference
			%\ifstrequal{#1}{!Class Reference}{!Class Name}{%
			%\ifstrequal{#1}{!Class Reference}{!Class Name}{%
			%\ifstrequal{#1}{!Class Reference}{!Class Name}{%
			\ifstrequal{#1}{A}{Abbreviations}{}}}%
	]}

% This argument will add the units
\newcommand{\nomunit}[1]{%
	\renewcommand{\nomentryend}{\hspace*{\fill}[#1]}}

%Renames Nomenclature to List of Symbols
\renewcommand{\nomname}{List of Symbols}

%\\\\\\\\\\\Definining MATLAB Appendix Colors\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

%\definecolor{mygreen}{RGB}{28,172,0}
%\definecolor{mylilas}{RGB}{170,55,241}
%\definecolor{mygrey}{RGB}{125,125,125}
%\definecolor{myBG}{RGB}{252,252,220}

%\\\\\\\\\\Table Spacing & Layout Parameters\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

\renewcommand{\arraystretch}{1.2}
\newcolumntype{C}{>{\small\centering\arraybackslash}X} %For tabularX
\newcolumntype{L}{>{\small\raggedright\arraybackslash}X} %For tabularX
\newcolumntype{R}{>{\small\raggedleft\arraybackslash}X} %For tabularX
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} %Allows column width adjustments while maintaining center alignment

%Changes parameters for \hdashline to make the dashes into dots:
\setlength\dashlinedash{0.2pt}
\setlength\dashlinegap{1.5pt}
\setlength\arrayrulewidth{0.3pt}

%\\\\\\\\\\\Set Document Layout & Title Margins\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

\titlespacing*{\chapter}{0pt}{-25pt}{10pt}
\definecolor{gray75}{gray}{0}
\newcommand{\hsp}{\hspace{3pt}}
\titleformat{\chapter}[hang]{\Huge\bfseries}{\thechapter\hsp\textcolor{gray75}\hsp}{10pt}{\Huge\bfseries}
%\titlespacing*{\section}{0pt}{.4cm}{.2cm}%added by steph for title spacing
%\titlespacing*{\subsection}{0pt}{.3cm}{.1cm}%added by steph for title spacing


%\\\\\\\\\\\Rename Bibliography to References\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

\usepackage[
backend=biber,
style=numeric,
citestyle=numeric,
sorting=none
]{biblatex}
\addbibresource{references.bib} %Bibliography File
\newcommand{\BibliographyName}{References} %Name of Biblography

%\\\\\\\\\\\Putting Chapter Titles, Page Number and Line in Header Section\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

\pagestyle{fancy}
\fancyhf{}
\rhead{\thepage} %Puts a page number on the right side of a header
\lhead{\leftmark} %Puts a chapter number and name on the left side of a header
\rfoot{}
\let\MakeUppercase\relax

%\\\\\\\\\\\Changing Footnote Counts to Arabic\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

\renewcommand{\thefootnote}{\arabic{footnote}}

%\\\\\\\\\\\Putting autoref for subsections, sections and chapters in capital\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

\renewcommand{\chapterautorefname}{Chapter}
\renewcommand{\sectionautorefname}{Section}
\renewcommand{\subsectionautorefname}{Section}
\renewcommand{\subsubsectionautorefname}{Section}

%\\\\\\\\\\\Misc\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\newcommand{\cmark}{\ding{51}}% for checkmark