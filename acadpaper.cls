%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Academic Paper LaTex Class
% Lincoln Mullen (lincoln@lincolnmullen.com)
% 
% A LaTeX class that extends the article class and does some formatting to make the article format more suitable for classroom papers.
% 
% (c) Copyright 2011 Lincoln Mullen.
% 
% This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% IDENTIFICATION %%%%%%%%%%
% Identify the class name and version
\ProvidesClass{acadpaper}[2012/12/28 v0.2 LaTeX academic paper class]
% This class depends on LaTeX 
\NeedsTeXFormat{LaTeX2e}


% DECLARATION OF OPTIONS %%%%%%%%%%
% Pass all options to the article class
\DeclareOption* {\PassOptionsToClass{\CurrentOption}{article}}


% PROCESS OPTIONS %%%%%%%%%%
\ProcessOptions  \relax


% PACKAGE LOADING %%%%%%%%%%
% Load the article class, which is being modified
\LoadClass{article}
% Make the font Palatino
% \usepackage{mathpazo}
% Use the geometry package to set correct margins
\RequirePackage[
  centering,			% topmarg:botmarg::rmarg:lmarg::1:1
  portrait=true,		% portrait orientation
  lmargin=1in,		% left margin 
  rmargin=1in,		% right margin 
  tmargin=1in,		% top margin 
  bmargin=1in,		% bottom margin 
]
{geometry}
% Load the package which will let us make the main text double-spaced
\RequirePackage{setspace}


% MAIN CODE %%%%%%%%%%
% Single horizontal space after punctuation
\frenchspacing
% Make everything double-spaced
\doublespacing
% But we don't want the title double-spaced. So at the beginning of the document, make the title within a single-spaced environment.
\AtBeginDocument{
  \begin{singlespace}
    \maketitle
  \end{singlespace}
}


\renewcommand{\@maketitle}{%
  \null
  \vspace{-0.375in}%
  \begin{center}%
    \let \footnote \thanks
    {\large \textbf \@title \par}%
    \vskip 1.0em%
    {\normalsize
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
    \end{tabular}\par}%
    \vskip 1em%
    {\normalsize \@date}%
  \end{center}%
  \par
\vskip 1em}

% Anything needed for the end of the document goes here
\AtEndDocument{
}
% Define an environment for the bibliographic information of a reviewed book.
\newenvironment{reviewedbook}{\begin{quote}}{\end{quote}}
