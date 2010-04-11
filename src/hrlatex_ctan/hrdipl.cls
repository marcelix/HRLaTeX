\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hrdipl}[2006/09/16 v0.22 LaTeX class for graduation thesis at the University of Zagreb]
% University of Zagreb, Croatia
\LoadClass[12pt, a4paper]{book}

\ProcessOptions*{}

\RequirePackage[enc=cp1250]{hrlatex} % <- hrdipl depends on hrlatex.sty
%
\RequirePackage[
	a4paper,
	]{geometry}      % <- hrdipl depends on geometry.sty






%
%====================================
%

\renewcommand{\titlepage}{
\thispagestyle{empty}
\begin{center}
  {\Large Sveu\v cili\v ste u Zagrebu \\[5mm]
    \@hrImeFakulteta % <- odjel
  \null}
\end{center}
\vskip 150pt
\begin{center}
  {\LARGE \lineskip .75em
  \begin{tabular}[t]{c} \@author % <- autor
  \end{tabular}\par}
  \vskip 3em
{\huge \@title \par} % <- \@title
\vskip 3em{\Large Diplomski rad}
\end{center}
\par
\vskip 125pt
%
\vfill
\begin{center}
{\large \@date \par}  % <- date
\end{center}
%
\newpage
\thispagestyle{empty}
\begin{center}
  {\Large Sveu\v cili\v ste u Zagrebu \\[5mm]
  \@hrImeFakulteta % <- odjel
  \null}
\end{center}
\vskip 150pt
\begin{center}
  {\LARGE \lineskip .75em
  \begin{tabular}[t]{c} \@author % <- autor
  \end{tabular}\par}
  \vskip 3em
{\huge {\@title} \par}
\vskip 3em{\Large Diplomski rad}
\end{center}
\par
\vskip 125pt
%
\mbox{} \hfill
\begin{minipage}{7cm}
\Large    Voditelj rada: \\
   \@hrVoditeljRada % <- Voditelj rada
\end{minipage}
\vfill

\begin{center}
{\large \@date \par} % <- date, npr. Zagreb, lipanj 2006.
\end{center}
}% end titlepage

%--------------------------------------------------------------
%
%    \hrImeFakulteta % defaults to {PMF -- Matemati\v{c}ki odjel}
%    \hrImeVoditelja
%--------------------------------------------------------------

\def\@hrImeFakulteta{PMF -- Matemati\v{c}ki odjel}
\newcommand{\hrImeFakulteta}[1]{\gdef\@hrImeFakulteta{#1}}
\def\@hrVoditeljRada{Marko Mati\'c}
\newcommand{\hrVoditeljRada}[1]{\gdef\@hrVoditeljRada{#1}}
