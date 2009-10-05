\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{ppclanak}[15/12/2005%
LaTeX klasa za clanke za Poucak]
\LoadClass[11pt,a4, oneside]{book}




% BEGIN execute default options-------------
\PassOptionsToPackage{test}{optional}
\PassOptionsToPackage{draft}{fixme}
\PassOptionsToPackage{linkcolor=blue, urlcolor=blue, colorlinks}{hyperref}
% 
\ProcessOptions\relax
% END execute default options --------------


% BEGIN ucitavanje paketa

% 
% \RequirePackage{hrlatex}



\RequirePackage[cp1250]{inputenc}
                              % koristi windows kodiranje CP1250 (WINDOWS-1250)
                              % ovo radi bez problema i u Kile editoru na KDE.
\RequirePackage[croatian]{babel}



\RequirePackage{calc}
\RequirePackage[dvips]{graphicx}
\RequirePackage[cmyk]{xcolor} % za boje
\RequirePackage{pstricks}
% 
% 
% 
% 
% BEGIN Paket za liste
\RequirePackage{enumerate}
\RequirePackage{paralist}
\RequirePackage{array}
\RequirePackage{multirow}  % za tablice 
% END paketi za liste
% 
% 
% 
% BEGIN glavni paketi za prijelom
\RequirePackage{multicol}
\RequirePackage{ragged2e}   % <- jel to koristim?
\RequirePackage{url}
% 
% 
\RequirePackage[a4paper, scale=0.8]{geometry}
\RequirePackage{crop}
% END paketi za prijelom
% 
% BEGIN matematicki paketi
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
% END 
% 
% 
% 
% BEGIN float paketi
% -------------------------------------
%   FLOAT packages
%     framed, placeins, caption
%
\RequirePackage{framed}    % trebam za okvire (koji mogu ici na vise stranica)
\RequirePackage{placeins}  % trebam za FloatBarrier
\RequirePackage{caption}   % trebam za bolji izgled float captiona...
\RequirePackage{picinpar}
% -------------------------------------
% END float paketi
% 
\RequirePackage{fixme}  
\RequirePackage{hyperref}%   hyperref radi... 



% BEGIN font paketi loading


\RequirePackage{textcomp}


% END font paketi loading

\RequirePackage[default]{optional}
\RequirePackage{verbatim}

\RequirePackage{times} 


% END loading packages



%------------------------------------------------


\newcommand\smaller{%
   \@setfontsize\smaller\@xpt\@xipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}

\newcommand\ssmaller{%
   \@setfontsize\ssmaller\@ixpt\@xipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{lightgray}{rgb}{0.6, 0.6, 0.6}


\DeclareGraphicsExtensions{.eps,.jpg,.png}


\renewcommand{\theequation}{\arabic{equation}}


%END maketitle i sl.


\setlength{\marginparwidth}{1.8cm}





\newcommand{\revisionhistory}{\input{\jobname.rh}}
\newcommand{\revision}[4]{}

\newcommand{\todo}[1]{\marginpar{\framebox{\parbox{\marginparwidth}{\tiny \texttt{TODO}\\  #1}}}}

\newcommand{\code}[1]{\texttt{#1}}





\setlength\columnseprule{0pt}

 




\renewcommand\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\dotfill \nobreak\hb@xt@\@pnumwidth{\hss \textsf{#2}}\par
      \penalty\@highpenalty
    \endgroup
  \fi}


%-----------------------------------------
%
%    CHAPTERHEAD design
%
%-----------------------------------------
\def\@makechapterhead#1{%
 % \chapterheadstart%  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
   \ifnum \c@secnumdepth >\m@ne
     \if@mainmatter
     {
       %\afterchapternum %
       \par\nobreak \vskip 20\p@
       }
     \else
       \printchapternonum
     \fi
   \else
     \printchapternonum
   \fi
   \interlinepenalty\@M
   %\printchaptertitle{#1}
\    \bigskip
	\begin{center}
	\huge \textsf{\textbf{#1}}
	\end{center}
   %\afterchaptertitle %
   \par\nobreak \vskip 0\p@
  }} % end chapterhead


\newcommand{\clanak}[2]%
{
	\renewcommand{\bibname}{Reference}
	\chapter{#2}%
	\begin{center}%
	\textsc{#1}%
	\end{center}%
	\medskip%
	\setcounter{teorem}{0}
	\setcounter{primjer}{0}
}


\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    %\thispagestyle{plain}%
                    \thispagestyle{marcelstyleb}
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}

\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
%                          \refstepcounter{chapter}%
%                          \typeout{\@chapapp\space\thechapter.}%
% 
% 			\@poucakRubrikaTOCMacro%  <--- VAZNO!
% 		        \@autorTOCMacro%
% 
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{ }\textsf{#1}}%
                       \else
%                          \addcontentsline{toc}{chapter}{#1}%
                       \fi
                    \else
%                       \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
%                     \addtocontents{lof}{\protect\addvspace{10\p@}}%
%                     \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
%                       \@poucakRubrikaMacro%
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}

\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \huge \bfseries\sffamily  #1\par\nobreak
    \vskip 40\p@
  }}

\newcommand{\ssChapter}[1]{\@makeschapterhead{#1}}


% --------------------------------------------------------------
%  formatiranje section, subsection-a... itd.

% -> ubaci u .sty

%BEGIN section styles (ali ne i chapter)
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\Large\bfseries\sffamily}}

\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\large\bfseries\sffamily}}

\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\bfseries\sffamily}}

\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
				    {\normalfont\bfseries\sffamily}}

\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\z@}%\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries\sffamily}}

\renewcommand{\sectionmark}[1]{\markboth{#1}{#1}}
%END section styles



\newcommand{\mytoc}[1]{
	\typeout{\@chapapp\space\thechapter.}%
	\addtocontents{toc}{\protect\contentsline{part}%
				    {\large{\textbf{{\textsf{\MakeUppercase{#1}}}}}}
				    {}{}
				    }
	\addtocontents{toc}{\protect\addvspace{-5\p@}}
}


\let\@autorTOCMacro\@empty

\newcommand{\autortoc}[1]{%
	\gdef\@autorTOCMacro{
	\addtocontents{toc}{\protect\contentsline{autor}{\small{\textsf{\textsc{#1}}}}{}{}}
	\addtocontents{toc}{\protect\addvspace{-10\p@}}
	}
}


\newcommand{\PoucakTOCNewPage}{%
	\addtocontents{toc}{\newpage}%
}

\newcommand{\komentar}[1]{
	\textcolor{red}{\scriptsize \emph{#1}}}



%
%
%   Ajmo srediti zadatke
\newcounter{exslot}

\newcommand{\exslot}[1]{
\stepcounter{exslot}
%\>
\alph{exslot})\ \
\parbox[t]{0.35 \textwidth}{#1}
}

\newcommand{\exnumslot}[1]{
\stepcounter{exslot}
%\>
\arabic{exslot}.\ \
\parbox[t]{0.35 \textwidth}{#1}
}

\newenvironment{exerciseslots}
{\begin{tabbing}
\setcounter{exslot}{0}}
{\end{tabbing}}




\newcommand{\zadacizaponavljanje}
{
\markboth{Zadaci za ponavljanje}{Zadaci za ponavljanje}
\nopagebreak
}


%\setlength{\mathsurround}{3pt}


\def\ps@marcelstyleb{%
	\def\@evenhead{
		\makebox[0cm][l]{\raisebox{5pt}{\scriptsize{\textsf{\rightmark}}}} % settowidth?
		\hspace*{-1.3em}
		\makebox[\textwidth][l]{\rule{\textwidth}{0.4pt}}
		\hspace{-0.8em}
		%\makebox[0cm][r]{\raisebox{5pt}{$\!\!\!\!$\textsf{\thepage}}}
	}% 


	\def\@oddhead{
		%\hspace{-0.8em}
		%\raggedleft\makebox[0cm][l]{\raisebox{5pt}{\textsf{\thepage}}}
		% \hspace{-0.9em}
		\noindent%
		%\mbox{}
		\hspace*{-0.5em}
		\makebox[0cm][l]{\rule{\textwidth }{0.3pt}}%     % crta
		\hfill\makebox[0pt][r]{\raisebox{5pt}{\scriptsize\textsc{\textsf{\leftmark}}}}
	}% 

	\def\@oddfoot{
		\hfill%
		$|$\ \ \textsf{\thepage}}

	\def\@evenfoot{%\@empty
		\textsf{\thepage}\ \ $|$ %}%\opt{test}{\hfil \qquad \tiny \fbox{\textsf{fixme lista \pageref{list:of:corrections}}} \qquad }%
		\hfill}


	\def\chaptermark##1{%
		\markboth{
			{%
			\ifnum \c@secnumdepth >\m@ne
			\if@mainmatter
			%\@chapapp\
			%\thechapter \ %%%%%  VAAAAAAAAAAAAAZNO!!!!
			\fi
			\fi
			##1}}%
		{\noindent\textsc{Pou\v{c}ak} \@gobble{\@poucakBroj}}}

	\def\sectionmark##1{%
		\markright {\MakeUppercase{%
			\ifnum \c@secnumdepth >\z@
			%\thechapter
			%\thesection \ % %%%%%%%%%%%VAAAAAAAAAZNO
			\fi
			##1}}}
}

%
% \@poucakNo

\pagestyle{marcelstyleb}


\def\ps@plain{
	\let\@mkboth\@gobbletwo
	\def\@oddhead{\rule{\textwidth}{0.1pt}}
	\def\@evenhead{\rule{\textwidth}{0.1pt}}
	\let\@oddfoot\@empty
	\let\@evenfoot\@empty}





\graphicspath{{eps/}{../eps/}}





\setcounter{topnumber}{1}
\renewcommand\topfraction{1}
\setcounter{bottomnumber}{3}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{18}
\renewcommand\textfraction{0}





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  \Poucak komande

\newcommand{\slika}[1]{
\fixme{fali slika}
\begin{center}\fbox{\begin{picture}(200,50)\put(3,40){\parbox{200pt}{#1}}\end{picture}}\end{center}
}



% style settings




\setcounter{tocdepth}{1}

\renewcommand{\thetable}{\arabic{table}}

\renewcommand{\thefigure}{\arabic{figure}}



\newcommand{\textbsf}[1]{\textbf{\textsf{#1}}}





%BEGIN Teoremi



\newtheoremstyle{PoucakSansStyle}
{12pt}{9pt}%
{\normalfont}%
{0em}{}%
{}%\newline}%2
{ }%
{%\raggedright{}
\textbf{\sffamily \thmname{#1} #2}. \thmnote{\textbf{\textsf{(#3)}}}}%
% }


\newtheoremstyle{HuzakSansStyle}
{12pt}{9pt}%
{\normalfont}%
{0em}{}%
% {}%
{\newline}%2
{ }%
{%\raggedright{}
\textbf{\sffamily \thmname{#1}}\thmnote{ \textup{\emph{#3}}}%
}

\theoremstyle{HuzakSansStyle}
\newtheorem*{HuzakPrimjer}{Primjer}


\theoremstyle{PoucakSansStyle}
\newtheorem{teorem}{Teorem}%[chapter]
\newtheorem{kor}[teorem]{Korolar}
\newtheorem{lema}[teorem]{Lema}
\newtheorem{propozicija}[teorem]{Propozicija}
\newtheorem{tvrdnja}[teorem]{Tvrdnja}
\newtheorem{primjer}{Primjer}%[chapter]


%END teoremi




