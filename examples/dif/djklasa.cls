\NeedsTeXFormat{LaTeX2e} \ProvidesClass{djklasa}[2003/11/12 Marcelix LaTeX class for DifJdbe]

\LoadClass[a4paper,
twoside,
%, article
12pt
]{book}

\RequirePackage{calc}

\RequirePackage[dvips]{graphicx}


 \RequirePackage[cmyk]{xcolor} % za boje
 \RequirePackage[cmyk]{colortbl}




\RequirePackage{hrlatex}


\RequirePackage[
    noinfo,
    %mount2,
    a4,
    center,
    %cam,
    frame,
    %cross,
    dvips,
    %axes
]{crop}



 







%\definecolor{mybeige}{rgb}{0.8, 0.8, 0.4}

%\xdefinecolor{myblue}{rgb}{0.4, 0.6, 0.8}
%\xdefinecolor{myblue}{cmyk}{1, 0, 0, 0}

\definecolor{lightgray}{rgb}{0.6, 0.6, 0.6}



\DeclareGraphicsExtensions{.eps,.jpg,.png}

%-------------------------------------
%      O P T I O N S

\DeclareOption{sans}{    \renewcommand{\familydefault}{\sfdefault}}


%\DeclareOption{colrprnt}{ \RequirePackage[linkcolor=black,urlcolor=blue, colorlinks]{hyperref} }


\ProcessOptions

%     END OPTIONS.
%----------------------------------------

%\newtheorem{thm}{Theorem}%[subsection]
%\newtheorem{cor}[thm]{Corollary}
%\newtheorem{lem}[thm]{Lemma}
%\newtheorem{prop}[thm]{Proposition}
%\newtheorem{defn}[thm]{Definition}
%\newtheorem{rem}[thm]{Remark}

\newtheorem{teorem}{Teorem}
\newtheorem{kor}[teorem]{Korolar}
\newtheorem{lema}[teorem]{Lema}

\let\@version\empty
\let\@bottomfootinfo\empty

\def\version#1{\gdef\@version{#1}}
\def\bottomfootinfo#1{\gdef\@bottomfootinfo{#1}}


\newcommand{\plavihead}[1]{
\noindent \colorbox{myblue}{
\parbox[t]{\textwidth}
{ \centering\textcolor{white}{\Large \textbf {#1} }} } }




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

    %\noindent%\includegraphics{adnectologo}
    %\hfill {{\tiny \jobname.pdf}    }

%    \vskip 10em

    \noindent {
    \parbox[t]{0.97\linewidth}
    {
     \begin{flushright}
     {
    \lineskip 1em
    \Huge \textbf{\noindent {\fontsize{50}{51}\selectfont\textsf{ \@title }}}
    \\[1ex]
    \textbf{\small{\textsf{\@author}   \quad %\@version
    }}
      }

     \end{flushright}}
     }

    \begin{flushright}
    {\small \@date}
    \end{flushright}

    {
      %\lineskip 0.5em%
      %\hspace{-5em}

      \par}


      %\vspace{20ex}

\vfill{} {

    \begin{center}
    \includegraphics[width=2cm]{unizg}
    \end{center}
}

    \vskip 1em%


  \par
  \vskip 1.5em
  %\hrule
  %\pagebreak
  }



\renewcommand\tableofcontents{%
    \bigskip
    \section*{
    %\textcolor{myblue}
    {\protect \Huge\textsf{\contentsname}}
    \@mkboth{\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}%
}




\renewcommand{\sectionmark}[1]{\markboth{#1}{#1}}
%\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}



%%%%
%
% tocka iza countera u \section
%
%\def\@seccntformat#1{\csname the#1\endcsname.\ \ }
%\renewcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}









% 
% \newcommand{\revisionhistory}{\input{\jobname.rh}}
% \newcommand{\revision}[4]{}
% 
% \newcommand{\todo}[1]{\marginpar{\framebox{\parbox{\marginparwidth}{\tiny \texttt{TODO}\\  #1}}}}
% 
% \newcommand{\code}[1]{\texttt{#1}}





\setlength\columnseprule{0pt}








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
     { \hfill{
     \textcolor{gray}{\small
     %\printchaptername
     }  \\[1ex]
     \hfill
     %
       \textcolor{lightgray}{\fontsize{140}{190}\selectfont \textbf{ \thechapter }}
       \textcolor{lightgray}{
       {}\ \\[1ex]
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
   \Huge \textsf{\textbf{#1}}
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
   %{\scriptsize\marginpar{\underline{\tiny \texttt{FIXME:}}\\[1ex] \tiny #1}}
}


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


%\newsavebox{\rhfixbox}
%\sbox{\rhfixbox}{\makebox{\begin{picture}(0, 13)\end{picture}}}
%\newcommand{\rhfix}{\usebox{\rhfixbox}}


\newcommand{\zadacizaponavljanje}
{
\markboth{Zadaci za ponavljanje}{Zadaci za ponavljanje}
\nopagebreak
}


%\setlength{\mathsurround}{3pt}


\def\ps@marcelstyleb{%
 \def\@evenhead{
   \makebox[0cm][l]{\raisebox{5pt}{\scriptsize\textbf{\textsf{\rightmark}}}}
   \hspace*{-1.3em}
   \makebox[\textwidth][l]{\rule{\textwidth}{0.4pt}}
    \hspace{-0.8em}
   %\makebox[0cm][r]{\raisebox{5pt}{$\!\!\!\!$\textsf{\thepage}}}
   }%end oddhead


 \def\@oddhead{
   %\hspace{-0.8em}
   %\raggedleft\makebox[0cm][l]{\raisebox{5pt}{\textsf{\thepage}}}
  % \hspace{-0.9em}
  \noindent
  %\mbox{}
  \hspace*{-0.5em}
   \makebox[0cm][l]{\rule{\textwidth }{0.4pt}}     % crta
   \hfill\makebox[0pt][r]{\raisebox{5pt}{\scriptsize\textbf{\textsf{\leftmark}}}}
   }%end oddhead

 \def\@oddfoot{
 \hfill $|$\ \ \textsf{\thepage}}

 \def\@evenfoot{%\@empty
 \textsf{\thepage}\ \ $|$\hfill}
%  %\hspace{-0.8em}
%   \raggedleft\makebox[0cm][l]{\raisebox{5pt}{\textsf{\thepage}}}
%   \hspace{-0.9em}
%   \makebox[0cm][l]{\rule{\textwidth}{0.4pt}}
%   \hfill\makebox[0.9em][r]{\raisebox{5pt}{\scriptsize\textsf{\leftmark}}}
%   }%end

  \def\chaptermark##1{%
      \markboth {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
          \if@mainmatter
            %\@chapapp\
            %\thechapter \ %%%%%  VAAAAAAAAAAAAAZNO!!!!
          \fi
        \fi
        ##1}}{
        \MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
          \if@mainmatter
            %\@chapapp\
            %\thechapter \ %%%%%  VAAAAAAAAAAAAAZNO!!!!
          \fi
        \fi
        ##1}}}%
  \def\sectionmark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\z@
          %\thechapter
          %\thesection \ % %%%%%%%%%%%VAAAAAAAAAZNO
        \fi
        ##1}}}

}

\pagestyle{marcelstyleb}
