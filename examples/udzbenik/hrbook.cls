\NeedsTeXFormat{LaTeX2e} \ProvidesClass{hrbook}[2006/15/01 HRLaTeX knjiga ]
\LoadClass[a4paper, twoside,
openany,
11pt
]{book}

\RequirePackage[dvips]{graphicx}
\RequirePackage{lastpage}
\RequirePackage{amssymb}
\RequirePackage[dvips,cmyk]{xcolor} % za boje


\RequirePackage{hrlatex}


\RequirePackage{makeidx}




\RequirePackage[
% 	papersize={168mm, 240mm},
	inner=2.61cm, 
	outer=2.61cm,
	top=21mm,
	bottom=19mm,
	bindingoffset=0mm,
	verbose,
	includeheadfoot,
	dvips=true,
% 	mag=1120,
% 	center,
	]{geometry}



\RequirePackage{multicol}  % za multicolumn mode




\newif \ifpdf \ifx \pdfoutput\undefined \pdffalse \else \pdfoutput=1 \pdftrue \fi

\ifpdf
	\RequirePackage[ps2pdf,colorlinks=true, urlcolor=blue, citecolor=blue,
	linkcolor=blue]{hyperref}
\else
	\RequirePackage[backref=false, pagebackref=false,
	colorlinks=false]{hyperref}
\fi




\xdefinecolor{myblue}{cmyk}{1, 0, 0, 0}
\xdefinecolor{lightgray}{cmyk}{0, 0, 0, 0.3}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      O P T I O N S



\DeclareOption{colrprnt}{ \RequirePackage[linkcolor=black,
urlcolor=blue, colorlinks]{hyperref} }








% Koliki indent zelim?
% \setlength{\parindent}{0em}


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

    \bigskip
    \section*{\textcolor{myblue}{\protect \Huge\contentsname}
        \@mkboth{%
         \contentsname}{\MakeUppercase\contentsname}}%

    \@starttoc{toc}%
}






\renewcommand{\sectionmark}[1]{\markboth{#1}{#1}}









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






\setlength\columnseprule{0pt}






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


\newsavebox{\rhfixbox}
\sbox{\rhfixbox}{\makebox{\begin{picture}(0, 13)\end{picture}}}
\newcommand{\rhfix}{\usebox{\rhfixbox}}


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
