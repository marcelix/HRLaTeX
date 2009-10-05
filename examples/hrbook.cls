\NeedsTeXFormat{LaTeX2e} \ProvidesClass{hrbook}[2006/15/01 HRLaTeX knjiga ]
\LoadClass[b5paper, twoside,
openany,
11pt
]{book}

\RequirePackage[dvips]{graphicx}
%\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{amssymb}
\RequirePackage[dvips,cmyk]{xcolor} % za boje
\RequirePackage[cmyk]{colortbl}


\RequirePackage{layout}

\RequirePackage{multicol}  % za multicolumn mode


%\RequirePackage{ae}
%\RequirePackage{aecompl}
\RequirePackage{tracefnt}
\RequirePackage[T1]{fontenc}
%\RequirePackage{t1enc}
\RequirePackage[cp1250]{inputenc}
%\RequirePackage{dj}

%\usepackage{times}
%\usepackage{charter}

\newif \ifpdf \ifx \pdfoutput\undefined \pdffalse \else \pdfoutput=1 \pdftrue \fi

\ifpdf

\RequirePackage[ps2pdf,colorlinks=true, urlcolor=blue, citecolor=blue,
linkcolor=blue]{hyperref}

\else

\RequirePackage[backref=false, pagebackref=false,
colorlinks=false]{hyperref}

\fi

%\RequirePackage{memhfixc}     % Ovo mi je zbog hyperref i memoir bugova
                              %


%\RequirePackage{textcomp}







%\definecolor{mybeige}{rgb}{0.8, 0.8, 0.4}
%\xdefinecolor{myblue}{rgb}{0.4, 0.6, 0.8}

\xdefinecolor{myblue}{cmyk}{1, 0, 0, 0}
%\definecolor{mybluelight}{myblue}{.70}

%\definecolor{lightgray}{gray}{.70}%{0.6, 0.6, 0.6}
\xdefinecolor{lightgray}{cmyk}{0, 0, 0, 0.3}



\graphicspath{{c:/localtexmf/tex/mygraphics/}}


%\DeclareGraphicsExtensions{.epsf,.jpg,.png}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      O P T I O N S

\DeclareOption{sans}{
    \renewcommand{\familydefault}{\sfdefault}
}

\DeclareOption{confidential}{ \special{!userdict begin
/bop-hook{gsave 250 20 translate 0
 rotate/Arial findfont 30 scalefont setfont 10 10 moveto 0.95 setgray (confidential) show
 grestore}def end}

\fancyhead{ \lhead{\scriptsize \textsf{CONFIDENTIAL}}
\rhead{\scriptsize \textsf{\MakeUppercase{\rightmark}}} } }

\DeclareOption{colrprnt}{ \RequirePackage[linkcolor=black,
urlcolor=blue, colorlinks]{hyperref} }



\DeclareOption{b5cijeli}{
% OFFSET ZA YAP  (gornji lijevi kut)
  \setlength{\voffset}{14mm}
  \setlength{\hoffset}{14mm}
% OFFSET ZA PS   (donji lijevi kut)
%  \setlength{\voffset}{-12mm}
%  \setlength{\hoffset}{12mm}
\setlength{\hoffset}{0mm}
\setlength{\voffset}{0mm}
  \setlength{\oddsidemargin}{2mm}
  \setlength{\evensidemargin}{-10mm}
  \setlength{\headsep}{10pt}
  \setlength{\textheight}{200mm}
  \setlength{\textwidth}{135mm}
  \setlength{\topmargin}{-22mm}
  \setlength{\headheight}{37pt}
  \setlength{\marginparwidth}{55pt}
  \setlength{\headsep}{15pt}
  \setlength{\footskip}{21pt}
  \newlength\duljinacrte
  \setlength{\duljinacrte}{\textwidth}
  %\addtolength{\duljinacrte}{\marginparwidth}
  \newlength\headwidth
  \setlength{\headwidth}{\duljinacrte}
}




% Koliki indent zelim?
\setlength{\parindent}{0em}


\ProcessOptions

\newtheorem{thm}{Theorem}%[subsection]
\newtheorem{cor}[thm]{Corollary}
\newtheorem{lem}[thm]{Lemma}
\newtheorem{prop}[thm]{Proposition}
\newtheorem{defn}[thm]{Definition}
\newtheorem{rem}[thm]{Remark}

\newtheorem{teorem}{Teorem}
\newtheorem{kor}[teorem]{Korolar}
\newtheorem{lema}[teorem]{Lema}

\let\@version\empty
\let\@bottomfootinfo\empty

\def\version#1{\gdef\@version{#1}}
\def\bottomfootinfo#1{\gdef\@bottomfootinfo{#1}}


\newcommand{\plavihead}[1]{
\noindent \colorbox{white}{
\parbox[t]{\textwidth}
{ \centering\textcolor{lightgray}{\Large \textbf {#1} }} } }




\renewcommand{\maketitle}{%
  %\newpage
  \thispagestyle{empty}

  %\null
  \vskip 2.5em%
%  \let \footnote \thanks
    {
    \noindent
   }
    \par%
    \vskip 0.5em%
    \vskip 1em
%    \vskip 10em

 \noindent
 {\Large
 Prof.dr.sc. Bla\v{z}enka Divjak\\[0.25ex]
 Prof.dr.sc. Tihomir Hunjak
 }
                 \bigskip
                 \vspace{7ex}

{                 \fontsize{40}{200}\selectfont
{%\textsf
{Matematika za         \\[0.35ex]
 informati\v{c}are }}
%        \@title
    }


  %  \noindent \colorbox{myblue}{
%    \parbox[t]{0.97\linewidth}
%    {
%     \begin{flushright}
%     \textcolor{white}{
%    \lineskip 7em
%    \Huge \textbf{\noindent\textsf  \@title }
%    \\[1ex]
%    \textbf{\small{
%   \noindent     Prof.dr.sc. Bla\v{z}enka Divjak\\
%                 Prof.dr.sc. Tihomir Hunjak
%    %\@author   \quad \@version
%    }}
%      }
%     \end{flushright}}
%     }
%    \begin{flushright}
%    {\small \@date}
%    \end{flushright}
%    {
%      %\lineskip 0.5em%
%      %\hspace{-5em}
%      \par}

      %\vspace{20ex}

\vfill{} {


}

    \vskip 1em%


  \par
  \vskip 1.5em
  %\hrule
  %\pagebreak
  }

%\renewcommand\tableofcontents{%
%
%    \section*{\contentsname
%        \@mkboth{%
%         \contentsname}{\MakeUppercase\contentsname}}%
%
%    \@starttoc{toc}%
%}

\renewcommand\tableofcontents{%

%\fancyfoot{
%\lfoot{\scriptsize  \@version, \copyright Adnecto}
%\cfoot{confidential inf3ormation}
%\rfoot{\fancyplain{\thepage}{\scriptsize  p. \thepage}  of \pageref{LastPage}}
%}
%\fancyhead{
%\lhead{\fancyplain{\scriptsize \@date}{\scriptsize \@date}}
%\chead{\@title}
%\rhead{\scriptsize \MakeUppercase{\rightmark}}
%}

    \bigskip
    \section*{\textcolor{myblue}{\protect \Huge\contentsname}
        \@mkboth{%
         \contentsname}{\MakeUppercase\contentsname}}%

    \@starttoc{toc}%
}






%\renewcommand{\footrulewidth}{0.2pt}
%\renewcommand{\headrulewidth}{0.2pt}

%\addtolength{\headwidth}{\marginparsep}
\renewcommand{\sectionmark}[1]{\markboth{#1}{#1}}
%\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}


%\renewcommand\section{\@startsection{section}{3}%
%{\z@}{-3.5ex \@plus -1ex \@minus -.2ex}%
%{2.3ex \@plus.2ex}%
%{\normalfont\large\bfseries}}


%%%%
%
% tocka iza countera u \section
%
%\def\@seccntformat#1{\csname the#1\endcsname.\ \ }
%\renewcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}




%\fancyhf{}
%%\fancyhead[RE, RO]{Adnecto}
%\fancyhead{
%\lhead{\scriptsize \textsf{CONFIDENTIAL}}
%\rhead{\scriptsize \textsf{\MakeUppercase{\rightmark}}}
%}







%\relax






\newsavebox{\headerbox}
\sbox{\headerbox}{\noindent\begin{picture}(400,26)(10, -25)
\put(-20,35){\line(1,0){420}} \put(-20,0){\line(1,0){420}}
%\put(-20,0){\line(0,1){35}}
\put(400,0){\line(0,1){35}} \put(-70, 0){\line(0,1){35}} \put(-70,
35){\line(1,0){50}} \put(-70, 0){\line(1,0){50}}

\put(5,25){\small \textsf{TITLE}}
%\put(220, 25){\scriptsize \textsf{NADNEVAK}}
%\put(320,25){\scriptsize \textsf{RAZRED}}
%\put(380,25){\scriptsize \textsf{BODOVI}}
\end{picture}}

\newcommand{\doheader}[1]{
\begin{picture}(0,0)
\put(45,30){\Huge \textbf{\textsf{#1}}}
\put(30,0){\usebox{\headerbox}}
\end{picture}}


\newcommand{\revisionhistory}{\input{\jobname.rh}}
\newcommand{\revision}[4]{}

\newcommand{\todo}[1]{\marginpar{\framebox{\parbox{\marginparwidth}{\tiny \texttt{TODO}\\  #1}}}}

\newcommand{\code}[1]{\texttt{#1}}
%\newtheorem{example}{Example}

%\pagestyle{fancy}



%%%%
%
%  Pagestyle a la memoir
%
%%%%

%\makepagestyle{mystyle} \makerunningwidth{mystyle}{\headwidth}
%\makeheadrule{mystyle}{\headwidth}{0.25\normalrulethickness}
%\makeheadposition{companion}{flushright}{flushleft}{}{}
%\makefootrule{mystyle}{\headwidth}{0.25\normalrulethickness}{\footruleskip}
%
%\makepsmarks{mystyle}{%
%\let\@mkboth\markboth
%\def\chaptermark##1{\markboth{##1}{##1}}
%\def\sectionmark##1{\markright{
%\ifnum \c@secnumdepth>\z@ \thesection. \ \fi ##1}} }
%
%\newcommand{\headrulewidth}{0.1pt}
%\newcommand{\footrulewidth}{0.1pt}
%
%\makeevenhead{mystyle}
%    {\normalfont\bfseries\thepage}{}{\normalfont\bfseries\leftmark}
%
%\makeoddhead{mystyle}
%    {\small\bfseries\rightmark}{\@title}{\normalfont\bfseries\thepage--\pageref{LastPage}}
%
%\makeoddfoot{mystyle}
%{}{\@bottomfootinfo}{\includegraphics[width=1.5cm]{adnectologo_light}}
%
%%
%%  call mystyle pagestyle
%%
%
%
%
%
%\aliaspagestyle{chapter}{mystyle} \aliaspagestyle{chapter}{empty}
%\pagestyle{mystyle}


\setlength\columnseprule{0pt}



%\typestandardlayout


%
%   Revision History Table - fix, 22.02.2004, Marc
%
\newsavebox{\rhfixbox}
\sbox{\rhfixbox}{\makebox{\begin{picture}(0, 13)\end{picture}}}
\newcommand{\rhfix}{\usebox{\rhfixbox}}


%\newcommand{\proba}[1]{\csname\string#1\endcsname}



%%
%    CHAPTERHEAD design
%
\def\@makechapterhead#1{%
 % \chapterheadstart%  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
   \ifnum \c@secnumdepth >\m@ne
     \if@mainmatter
     { \hfill{
     \textcolor{gray}{\small
     %\printchaptername
     }  \\[1ex]
     \hfill
     %
       \textcolor{lightgray}{\fontsize{90}{140}\selectfont \textbf{ \thechapter }}
       \textcolor{lightgray}{
       {}\ \\[2ex]
       \hrule
       }
       %\textbf{\thechapter   }
       }
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
   \Huge \textcolor{myblue}{\textit{\textbf{#1}}}
   %\afterchaptertitle %
   \par\nobreak \vskip 20\p@
  }}






%\setlength{\secindent}{-15pt}

%\newenvironment{widepar}{
%\addtolength{\linewidth}{50pt}
%\bigskip
%\hrule
%\par
%%\begin{minipage}{\textwidth}
%} {\addtolength{\textwidth}{-50pt}
%%\end{minipage}
%\hrule
%\par}


\newcommand{\komentar}[1]{
\textcolor{red}{\scriptsize \emph{#1}}}

\newcommand{\FIXME}[1]{
{\scriptsize\marginpar{\underline{\tiny \texttt{FIXME:}}\\[1ex] \tiny #1}}}
%
\renewcommand{\FIXME}[1]{}
\renewcommand{\marginpar}[1]{}


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

\newcommand{\exwideslot}[1]
{
\stepcounter{exslot}
%\>
\alph{exslot})\ \
\parbox[t]{0.75 \textwidth}{#1}
}

\newcommand{\exnumslot}[1]{
\stepcounter{exslot}
%\>
\arabic{exslot}.\ \
\parbox[t]{0.35 \textwidth}{#1}
}

\newlength{\tmpexerciselength}

\newenvironment{exerciseslots}
{
\setlength{\tmpexerciselength}{\topsep}
\setlength{\itemsep}{0pt}
\setlength{\topsep}{2pt}
\begin{tabbing}
\setcounter{exslot}{0}}
{\end{tabbing}
%\setlength{\topsep}{\tmpexerciselength}
}


%\newsavebox{\rhfixbox}
%\sbox{\rhfixbox}{\makebox{\begin{picture}(0, 13)\end{picture}}}
%\newcommand{\rhfix}{\usebox{\rhfixbox}}


\renewcommand*\l@section{\@dottedtocline{1}{2.3em}{2.4em}}
%\newcommand*\l@section{\@dottedtocline{1}{2.3em}{1.6em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{4.8em}{3.2em}}
%\renewcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}

\let\mybox\fbox



\newwrite\tf@rjesenja

\newcommand{\rjesenje}[1]{
\protected@write{\@auxout}
  {}
  {\string\@writefile{rjesenja}{
  {\protect\par {\small \textbf{\theexercise} #1}}
  }}}



\renewcommand\part{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{plain}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       {\huge\bfseries\fontsize{70}{51}\selectfont  \nobreakspace\thepart}
       \par
       \vskip 20\p@
     \fi
     \Huge \bfseries #2\par}%
    \@endpart}
