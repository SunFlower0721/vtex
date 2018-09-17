\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{tarquinst}
              [2014/09/29 v1.4h
 Standard LaTeX document class]
 
% \renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
 
\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\newif\if@chapterpage
\@titlepagefalse
%\newif\if@openright
%\newif\if@mainmatter \@mainmattertrue
\if@compatibility\else
  \DeclareOption{squaresize}
 {\setlength\paperheight {160mm}%
 	\setlength\paperwidth  {160mm}
 \AtBeginDvi{\special{papersize=160mm,160mm}}}
 \fi
 %
 \if@compatibility
 \renewcommand\@ptsize{0}
 \else
 \DeclareOption{10pt}{\renewcommand\@ptsize{0}}
 \fi
 \DeclareOption{11pt}{\renewcommand\@ptsize{1}}
 \DeclareOption{12pt}{\renewcommand\@ptsize{2}}
 \DeclareOption{14pt}{\renewcommand\@ptsize{4}}
\if@compatibility\else
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\fi
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
 %
 \ExecuteOptions{squaresize,11pt,twoside}%12pt,oneside,onecolumn,final
 \ProcessOptions
 \input{size1\@ptsize.clo}
 %
 %\parskip=0pt
 %\baselineskip=0pt
 \setlength{\textwidth}{136mm}
 \setlength{\textheight}{130mm}
 \setlength{\hoffset}{-1in}
 \setlength{\oddsidemargin}{14mm}	
 \setlength{\evensidemargin}{10mm}
 \setlength{\voffset}{-1in}
\setlength{\headheight}{14pt}
% \setlength{\footskip}{10pt}
\RequirePackage{tgpagella}
%\RequirePackage[T1]{fontenc} 
% \pagestyle{ruled}
 %
 %

% \def\ps@headings{%
% 	\let\@oddfoot\@empty\let\@evenfoot\@empty
% 	\def\@evenhead{\thepage\hfil\itshape\leftmark\hfil}%
% 	\def\@oddhead{{\hfil\itshape\leftmark}\hfil\thepage}%
% 	\let\@mkboth\markboth
% 	\def\chaptermark##1{%
% 		\markboth {##1}{}}}
%
% \def\ps@myheadings{%
% 	\let\@oddfoot\@empty\let\@evenfoot\@empty
% 	\def\@evenhead{\thepage\hfil\itshape\leftmark\hfil}%
% 	\def\@oddhead{{\hfil\itshape\leftmark}\hfil\thepage}%
% 	\let\@mkboth\@gobbletwo
% 	\let\chaptermark\@gobble
% }
 %
%
\newenvironment{changemargin}{%
	\begin{list}{}{%
%\pagestyle{empty}
%\setlength{\textwidth}{132mm}
%\setlength{\textheight}{100mm}
%\setlength{\voffset}{-1in}
%\setlength{\headheight}{14pt}
%\setlength{\topsep}{2in}
%\setlength{\hoffset}{-1in}
%\setlength{\oddsidemargin}{14mm}	
%\setlength{\evensidemargin}{14mm}
%\setlength{\leftmargin}{14mm}
\setlength{\rightmargin}{4mm}
		}%
		\item[]}{\end{list}}


\newcommand*\chaptermark[1]{}
%\newcounter {chapter}
%\renewcommand \thechapter {\@arabic\c@chapter}
\newcommand\@chapapp{\chaptername}
\newcommand\chaptername{Chapter}
\newcommand\chapter{%\if@openright\cleardoublepage\else\clearpage\fi
	\thispagestyle{empty}%
	\global\@topnum\z@
	\@afterindentfalse
	\secdef\@chapter\@schapter}
\def\@chapter[#1]#2{
%	\ifnum \c@secnumdepth >\m@ne
%	\if@mainmatter
%	\refstepcounter{chapter}%
%	%\typeout{\@chapapp\space\thechapter.}%
%%	\addcontentsline{toc}{chapter}%
%	{\protect\numberline{\thechapter}#1}%
%	\else
%%	\addcontentsline{toc}{chapter}{#1}%
%	\fi
%	\else
%%	\addcontentsline{toc}{chapter}{#1}%
%	\fi
	\chaptermark{#1}%
%	\addtocontents{lof}{\protect\addvspace{10\p@}}%
%	\addtocontents{lot}{\protect\addvspace{10\p@}}%
	\@makechapterhead{#2}%
	\@afterheading}
\def\@makechapterhead#1{%
%	\vspace*{50\p@}%
	{\parindent \z@ \raggedright \normalfont
%		\ifnum \c@secnumdepth >\m@ne
%		\if@mainmatter
%		\huge\bfseries \@chapapp\space \thechapter
%		\par\nobreak
%		\vskip 20\p@
%		\fi
%		\fi
		\interlinepenalty\@M
		\Huge%
		 %\fontsize{24pt}{12pt}\selectfont%
		 \centering #1\par\nobreak
		\vskip 10\p@
}}
\def\@schapter#1{\@makeschapterhead{#1}%
	\@afterheading}
\def\@makeschapterhead#1{%
%	\vspace*{50\p@}%
	{\parindent \z@ \raggedright
		\normalfont
		\interlinepenalty\@M
		\Huge\centering #1\par\nobreak
		\vskip 10\p@
}}



 \RequirePackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{ \markboth{#1}{} }
%\renewcommand*{\chaptermark}[1]{ \markboth{\chaptername\ \thechapter: ##1}{} }%
\fancyhf{}
\fancyhead[LE,RO]{\thepage}
\fancyhead[CE,CO]{{\itshape\nouppercase{\leftmark}}}

\newcommand{\questionno}[1]{\fboxsep=10pt\fbox{\fontsize{13.5pt}{12pt}\selectfont{\#{#1}}}}
\newcommand{\answerno}[1]{\fboxsep=7pt\fbox{\fontsize{11pt}{12pt}\selectfont{\#{#1}}}}
	
%\newcounter {part}
%\renewcommand \thepart {\@Roman\c@part}
%\newcommand\part{%
%	\if@noskipsec \leavevmode \fi
%	\par
%	\addvspace{4ex}%
%	\@afterindentfalse
%	\secdef\@part\@spart}
%
%\def\@part[#1]#2{%
%	\ifnum \c@secnumdepth >\m@ne
%	\refstepcounter{part}%
%	\addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
%	\else
%	\addcontentsline{toc}{part}{#1}%
%	\fi
%	{\parindent \z@ \raggedright
%		\interlinepenalty \@M
%		\normalfont
%		\ifnum \c@secnumdepth >\m@ne
%		%\Large
%		%\bfseries \partname\nobreakspace\thepart
%		%\par\nobreak
%		\fi
%		%\huge 
%		\bfseries #2%
%		\markboth{}{}\par}%
%	\nobreak
%	\vskip 3ex
%	\@afterheading}
%\def\@spart#1{%
%{\parindent \z@ \raggedright
%	\interlinepenalty \@M
%	\normalfont
%	%\huge 
%	\bfseries #1\par}%
%\nobreak
%\vskip 3ex
%\@afterheading}
%\pagestyle{headings}
\pagenumbering{arabic}

 \endinput