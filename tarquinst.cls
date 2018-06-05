\NeedsTeXFormat{LaTeX2e}%[1995/12/01]
\ProvidesClass{tarquinst}[2018/06/05 Tarquin class]
 
% \renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
 
\newcommand\@ptsize{}
%
  \DeclareOption{squaresize}
 {\setlength\paperheight {160mm}%
 	\setlength\paperwidth  {160mm}
 \AtBeginDvi{\special{papersize=160mm,160mm}}}
%
 \renewcommand\@ptsize{0}
 \DeclareOption{10pt}{\renewcommand\@ptsize{0}}
 \DeclareOption{11pt}{\renewcommand\@ptsize{1}}
 \DeclareOption{12pt}{\renewcommand\@ptsize{2}}
 \DeclareOption{14pt}{\renewcommand\@ptsize{4}}
%
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
 %
 \ExecuteOptions{squaresize,11pt,twoside}%12pt,oneside,onecolumn,final
 \ProcessOptions
 \input{size1\@ptsize.clo}
 %
 %\parskip=0pt
 %\baselineskip=0pt
 \setlength{\textwidth}{136mm}
 \setlength{\textheight}{140mm}
 \setlength{\hoffset}{-1in}
 \setlength{\oddsidemargin}{14mm}	
 \setlength{\evensidemargin}{10mm}
 \setlength{\voffset}{-1in}
%\setlength{\headheight}{14pt}
\setlength{\headsep}{20pt}
% \setlength{\footskip}{10pt}
%
\RequirePackage{tgpagella}
%\RequirePackage[T1]{fontenc} 
%
\newenvironment{changemargin}{%
	\begin{list}{}{%
\setlength{\rightmargin}{4mm}%
		}%
		\item[]}{\end{list}}
%
\def\chapter@font{\fontsize{24}{28.8}\selectfont}
\def\question@font{\fontsize{13.5pt}{16pt}\selectfont}
\def\answer@font{\fontsize{11pt}{13pt}\selectfont}
\def\running@font{\fontsize{11pt}{13pt}\selectfont}
%
\newcommand*\chaptermark[1]{}
\newcommand\chapter{
	\thispagestyle{empty}%
%	\global\@topnum\z@
%	\@afterindentfalse
	\secdef\@chapter\@schapter}
\def\@chapter[#1]#2{%
	\chaptermark{#1}%
	\@makechapterhead{#2}%
%	\@afterheading
}
\def\@makechapterhead#1{%
	\vspace*{48\p@}%
	{%\parindent \z@ \raggedright% \normalfont
		\interlinepenalty\@M
		 \centering\chapter@font{#1}%\par\nobreak
		\vskip 7\p@
}}
\def\@schapter#1{\@makeschapterhead{#1}%
%	\@afterheading
}
\def\@makeschapterhead#1{%
	\vspace*{48\p@}%
	{%\parindent \z@ \raggedright% \normalfont
		\interlinepenalty\@M
		\centering\chapter@font{#1}%\par\nobreak
		\vskip 7\p@
}}
%
 \def\ps@headings{%
 	\def\@evenhead{\vbox{\hbox to\hsize{\thepage\hfil\itshape\leftmark\hfil}
 	\vspace{4pt} \hbox to \hsize{\hrulefill}}}%
 	\def\@oddhead{\vbox{\hbox to\hsize{\hfil{\itshape\leftmark}\hfil\thepage}
 	\vspace{4pt} \hbox to \hsize{\hrulefill}}}% 	
 %	\let\@mkboth\markboth
 	\def\chaptermark##1{%
 		\markboth {##1}{}}
 	}
%
\RequirePackage{tikz}
\newcommand{\questionno}[1]{%
	\begin{tikzpicture}[line width=1pt,scale=1.2]
	%\draw[thick]
	\draw (0,0.5) -- (0,1) -- (1,1) -- (1,0) -- (0.5,0);% -- (0,0.4);%
	%\draw (0,0.4) .. controls (0,1) and (2,1) .. (0.4,0);
	\draw (0,0.5) arc [start angle=-180, end angle=-90, radius=0.5] -- (0.5,0);
	\draw[red] (0,0.45) -- (0,0) -- (0.45,0);
	\draw (0.5,0.5) node {\question@font{\#{#1}}};
	%\draw (0.4,0) parabola (0,0.4);
	%\question@font{\#{#1}} 
	\end{tikzpicture}}
\newcommand{\answerno}[1]{%
	\begin{tikzpicture}[line width=0.8pt]
	%\draw[thick]
	\draw[red] (0,0.5) -- (0,1) -- (1,1) -- (1,0) -- (0.5,0);% -- (0,0.4);%
	%\draw (0,0.4) .. controls (0,1) and (2,1) .. (0.4,0);
	\draw[red] (0,0.5) arc [start angle=-180, end angle=-90, radius=0.5] -- (0.5,0);
	\draw (0,0.45) -- (0,0) -- (0.45,0);
	\draw (0.5,0.5) node {\answer@font{\#{#1}}};
	%\draw (0.4,0) parabola (0,0.4);
	%\question@font{\#{#1}} 
	\end{tikzpicture}}
	
\pagestyle{headings}
\pagenumbering{arabic}

\endinput