\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{unizgphd}[2013/07/07 UniZG class for PhD thesis]
\LoadClassWithOptions{book}




\RequirePackage{amsmath, amssymb}
\RequirePackage{amsthm}


\RequirePackage{calc}
\RequirePackage{graphicx}

 \RequirePackage[cmyk]{xcolor} % za boje
 \RequirePackage[cmyk]{colortbl}%

\RequirePackage{ragged2e}
\RequirePackage{setspace}


\RequirePackage{hrlatex}

\usepackage{ifdraft}

% \RequirePackage[
% % 	papersize={168mm, 240mm},
% %         papersize={210mm,297mm}, % ovo je A4
% % %        
% % 	inner=1.91cm, 
% % 	outer=1.91cm,
% % 	top=11mm,
% % 	bottom=12mm, % povecao donju marginu za 3mm...
% % 	bindingoffset=16mm,
% % 	verbose,
% % 	includeheadfoot,
% 	dvips=true,
% %  	mag=1120,
% 	]{geometry}

% \RequirePackage[
%     noinfo,
%     %mount2,
%     a4,
% %     center,  % !!!!! Ovaj 'center' je los za dvi->ps->pdf workflow.
% %     cam,
% %     frame,
% %     cross,
%     dvips,
% %     info,
% ]{crop}


\RequirePackage[
% pdftitle={Multiplarne prirodne dedukcije},
% backref
]{hyperref}  



\RequirePackage{textcomp}



\definecolor{lightgray}{rgb}{0.6, 0.6, 0.6}

\newif\ifhrbook@draft
\ifoptiondraft{%
\hrbook@drafttrue%
}



\DeclareGraphicsExtensions{.eps,.jpg,.png}

%-------------------------------------
%      O P T I O N S

% \DeclareOption{sans}{    \renewcommand{\familydefault}{\sfdefault}}
\DeclareOption{hrbookfinal}{\hrbook@draftfalse}


%\DeclareOption{colrprnt}{ \RequirePackage[linkcolor=black,urlcolor=blue, colorlinks]{hyperref} }


\ProcessOptions

%     END OPTIONS.
%----------------------------------------






\let\@version\empty
\let\@bottomfootinfo\empty

\def\version#1{\gdef\@version{#1}}
\def\bottomfootinfo#1{\gdef\@bottomfootinfo{#1}}


 




\renewcommand{\maketitle}{%
  %\newpage
  \thispagestyle{empty}


    \strut
    \par%
%     \vskip 0.5em%
    \vskip 2.5em



    \noindent {
    \parbox[t]{0.97\linewidth}
    {
     \begin{flushright}
     {
%     \lineskip 1em
% \setstretch{1.5}
\onehalfspacing
    \Huge \textbf{\noindent {\fontsize{32}{55}\selectfont\textsf{ \@title }}}
    \\[3ex]
    {\hfill \Large \textbf{{\textsf{\@author}}%\@version
    }}}
% 
     \end{flushright}}
     }



\vfill\relax
{

    \begin{center}
%     \includegraphics[width=2cm]{unizg}
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
    \chapter*{
    %\textcolor{myblue}
    {\protect \Huge\textsf{\contentsname}}
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
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










\newcommand{\revisionhistory}{\input{\jobname.rh}}
\newcommand{\revision}[4]{}

\newcommand{\todo}[1]{\marginpar{\framebox{\parbox{\marginparwidth}{\tiny \texttt{TODO} \\  #1}}}}

\newcommand{\code}[1]{\texttt{#1}}





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
       \textcolor{lightgray}{\fontsize{140}{200}\selectfont \textbf{ \thechapter }}
       \textcolor{lightgray}{
       \strut \\[3ex]
       \hrule
       }% textcolor za hrule
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


\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \Huge \bfseries \sffamily #1\par\nobreak
    \vskip 40\p@
  }}


% \let\@makeschapterhead\@makechapterhead




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
   %{\scriptsize\marginpar{\underline{\tiny \texttt{FIXME:}} \\[1ex] \tiny #1}}
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
%  TODO:
 %if draft
\ifhrbook@draft
 \strut \textcolor{orange}{\scriptsize \sffamily
 \url{https://bitbucket.org/marcelix/papers}}%
%  https://malibeno.repositoryhosting.com/trac/malibeno_papers
\fi%end if
 \hfill
         $|$\ \ \textsf{\thepage}}

 \def\@evenfoot{%\@empty
 \textsf{\thepage}\ \ $|$\hfill
% 
\ifhrbook@draft
    \fbox{\textcolor{red}{{\scriptsize{\texttt{\input{revision.txt}}}}}}
\fi%end if-bloka
}
% 
%  \hfil
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


\def\ps@marcelstyleplain{%
 \def\@evenhead{}
 \def\@oddhead{}

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

\let\ps@plain\ps@marcelstyleplain\relax
\pagestyle{marcelstyleb}

\newenvironment{framedd}% using default \FrameCommand
  {\MakeFramed {\advance\hsize-\width \FrameRestore}}%
  {\endMakeFramed}



%  TODO
\newenvironment*{okvir}[1][Naslov okvira]{%
% 
\begin{samepage}
\begin{framedd}%
{
% Formatiranje paragrafa
\setlength{\parindent}{0pt}
\setlength{\parskip}{1.5ex plus 0.5ex minus 0.2ex}
% 
% Centriranje naslova
\centering
% Formatiranje Naslova
\large\textbf{\textsf{{\MakeUppercase{#1}}}}
\par%
% \filbreak
\nopagebreak[4]
}% centering
\par\nopagebreak[4]
\smallskip 
\setlength{\parindent}{0pt}
\setlength{\parskip}{1.5ex plus 0.5ex minus 0.2ex}
}
{%
\end{framedd}%
\end{samepage}
}

%  TODO
\newenvironment*{okvir*}{%
\begin{framed}%
{
% \centering%
% \large\textbf{\textsf{{\MakeUppercase{%
% #1 %
% }}}}
% \par 
}% centering
% \par
\smallskip 
}
{%
\end{framed}%
}



% za verbalne argumente
\newenvironment{sika:argument}
               {\par\noindent \list{}{\listparindent 2em%
                        \itemindent    \z@
                        \leftmargin 4em
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax \itshape}
               {\endlist\par}


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
