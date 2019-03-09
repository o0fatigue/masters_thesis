%% KU2.cls
%% Thesis class file for TeX in use at the Department of Social Informatics, Graduate School of Informatics, Kyoto University
%% Christian Vincenot @2017 <vincenot@i.kyoto-u.ac.jp>
%%
%% The source code of this file is distributed under the Apache License 2.0. Please refer for terms and conditions to:
%% http://www.apache.org/licenses/LICENSE-2.0
%% Please note, however, that the production of thesis/dissertation manuscript using this class file is meant only for students
%% belonging to Kyoto University. Any use of this class file in attempts to mimick fraudulently KU dissertations is hereby
%% strongly prohibited.
%%
\LoadClass{report}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{KU2}
              [2018/01/24 v1.0e Kyoto University Dept of Social Informatics Thesis Class File]
\RequirePackage{fontspec}
\RequirePackage{xeCJK}
\RequirePackage{ifplatform}
\RequirePackage{pgffor}
%\RequirePackage{minted}
%\RequirePackage{titlesec}


\DeclareOption{japanese}
   {\def\japanese{1}%
    \ifwindows\setCJKmainfont{Meiryo}%
    \iflinux\setCJKmainfont{TakaoMincho}%
    \ifmacos\setCJKmainfont{Hiragino}%
}
% \DeclareOption{simsun}
%    {\def\japanese{1}
%     \setmainfont{SimSun}}
\DeclareOption{linux}
   {\def\myOS{1}%
    \setCJKmainfont{TakaoMincho}}
\DeclareOption{macos}
   {\def\myOS{2}%
   \setCJKmainfont{Hiragino}}
\DeclareOption{windows}
   {\def\myOS{3}%
   \setCJKmainfont{Meiryo}}
\ExecuteOptions{a4paper,12pt,twoside,onecolumn,final,openright}
\ProcessOptions

\setmainfont{Times New Roman}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Localization
\newcommand\affiliationJP{京都大学 大学院情報学研究科\\社会情報学専攻}
\newcommand\affiliationEN{Department of Social Informatics\\Graduate School of Informatics\\Kyoto University\\Japan}
\newcommand\abstractnameJP{内容梗概}
\newcommand\abstractnameEN{Abstract}
\newcommand\submissionJP{}
\newcommand\submissionEN{Submitted on}
\newcommand\supervisorJP{指導教官}
\newcommand\supervisorEN{Supervisor:}
\newcommand\contentsnameJP{目次}
\newcommand\listfigurenameJP{図リスト}
\newcommand\listtablenameJP{表リスト}
\newcommand\bibnameJP{文献データベース}
\newcommand\indexnameJP{Index}
\newcommand\figurenameJP{図}
\newcommand\tablenameJP{表}
%  \newcommand\partnameJP{Part}
\newcommand\chapternameJP{第}
\newcommand\chapternameendJP{章}
\newcommand\appendixnameJP{付録}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Set jap params

\ifx\japanese\undefined
  \def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
  \renewcommand\abstractname\abstractnameEN
  \textwidth14.2cm
  \newcommand\affiliation\affiliationEN
  \newcommand\submitted\submissionEN
  \newcommand\supervisortxt\supervisorEN
  \def\thesis{\degree\space Thesis}
\else
%   \renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
%                     \thispagestyle{plain}%
%                     \global\@topnum\z@
%                     \@afterindentfalse
%                     \secdef\@chapter\@schapter}
% \def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
%                          \refstepcounter{chapter}%
%                          \typeout{第\thechapter章.}% %\@chapapp\space\thechapter.}%
%                          \addcontentsline{toc}{chapter}%
%                                    {\protect\numberline{\thechapter}#1}%
%                     \else
%                       \addcontentsline{toc}{chapter}{#1}%
%                     \fi
%                     \chaptermark{#1}%
%                     \addtocontents{lof}{\protect\addvspace{10\p@}}%
%                     \addtocontents{lot}{\protect\addvspace{10\p@}}%
%                     \if@twocolumn
%                       \@topnewpage[\@makechapterhead{#2}]%
%                     \else
%                       \@makechapterhead{#2}%
%                       \@afterheading
%                     \fi}
% \def\@makechapterhead#1{%
%   \vspace*{50\p@}%
%   {\parindent \z@ \raggedright \normalfont
%     \ifnum \c@secnumdepth >\m@ne
%         \huge\bfseries 第\thechapter章\space
%         \par\nobreak
%         \vskip 20\p@
%     \fi
%     \interlinepenalty\@M
%     \Huge \bfseries #1\par\nobreak
%     \vskip 40\p@
%   }}


%   \ifwindows\setCJKmainfont{Meiryo}
%   \else \iflinux \setCJKmainfont{TakaoMincho}
%   \else \setCJKmainfont{Hiragino}
%   \fi
%   \ifnum\myOS=3\setCJKmainfont{Meiryo}
%     \else \ifnum\myOS=1\setCJKmainfont{TakaoMincho}
%     \else \setCJKmainfont{Hiragino}
  %\setCJKmainfont[BoldFont=STHeiti,ItalicFont=STKaiti]{STSong}
  %\setCJKmainfont[BoldFont=AozoraMincho-bold,AutoFakeSlant=0.15]{Aozora Mincho}
  
  \def\today{\number\year 年 \number\month 月 \number\day 日}
  \renewcommand\contentsname{\contentsnameJP}
  \renewcommand\listfigurename{\listfigurenameJP}
  \renewcommand\listtablename{\listfigurenameJP}
  \renewcommand\bibname{\bibnameJP}
  \renewcommand\indexname{\indexnameJP}
  \renewcommand\figurename{\figurenameJP}
  \renewcommand\tablename{\tablenameJP}
%  \newcommand\partname{Part}
  \renewcommand\chaptername{\chapternameJP}
  \newcommand\chapternameend{\chapternameendJP}
  \renewcommand\appendixname{\appendixnameJP}
  %\def\thechapter{第\arabic{chapter}章}
  %\renewcommand\chapter{第\arabic{chapter}章}
  %\renewcommand \thesection {第\thechapter.\@arabic\c@section章}
  %\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
  %\renewcommand\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}
  %\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
  %\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
  %\renewcommand\chapter\abstractnameJP
  %\def\thesection{第\arabic{section}章}
  \renewcommand\abstractname\abstractnameJP
  \textwidth14.2cm
  \newcommand\affiliation\affiliationJP
  \newcommand\submitted\submissionJP
  \newcommand\supervisortxt\supervisorJP
  \def\thesis{\degree 論文}
  
%   \titleformat{\chapter}[block]
%   {\normalfont\huge\bfseries}{\thechapter.}{1em}{\Huge}
%   \titlespacing*{\chapter}{0pt}{-19pt}{0pt}
\def\@makechapterhead#1{%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \huge\bfseries \chaptername\thechapter\chapternameend\ %
    \fi
    \interlinepenalty\@M
    #1\par\nobreak%
    \vskip 40\p@%
  }}
%\makeatother
  
\fi

\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                                   %{\protect\numberline{\chaptername\thechapter\chapternameend}\space\space\space\space\space#1}%
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Custom functions

\def\degree{Master}
\newcommand{\setdegree}[1]{\def\degree{#1}}
\newcommand{\supervisor}[1]{\def\supervisorname{#1}}
\newcommand{\setdepartment}[1]{\renewcommand\affiliation{#1}}

\if@titlepage
  \renewcommand\maketitle{\begin{titlepage}%
    \begin{center}
        {\huge\textbf{\thesis}}
        
        \vspace*{2cm}
        {\huge\textbf{\@title}}
        
        %\vspace{0.5cm}
        %Thesis Subtitle
        
        \vspace{1.5cm}
        {\Large \supervisortxt\space\supervisorname}
        
        \vfill
        %\includegraphics[width=0.4\textwidth]{university}
        
        {\Large\affiliation}
        
        \vspace{1cm}
        {\huge\textbf{\@author}}
        
	\vspace{3cm}
	
	{\Large\submitted\space\today}
        %\date
        
    \end{center}

  \end{titlepage}%
  }
\fi


\if@titlepage
  \renewenvironment{abstract}{%
      \titlepage
      \@beginparpenalty\@lowpenalty
      \begin{center}%
        \bfseries \huge \@title%\abstractname
        \vspace{0.3cm}
        \begin{flushright}%
	  {\bfseries{\Large\@author}}%
        \end{flushright}%
        \vspace{0.3cm}
        \begin{flushleft}%
	  {\bfseries{\large\abstractname}}%
        \end{flushleft}%
        \@endparpenalty\@M
      \end{center}}%
     {\par\endtitlepage}
\else
  \renewenvironment{abstract}{%
      \if@twocolumn
        \section*{\abstractname}%
      \else
        \small
        \begin{center}%
          {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
          \vspace{0.5cm}\author
        \end{center}%
        \quotation
      \fi}
      {\if@twocolumn\else\endquotation\fi}
\fi

% \if@titlepage
%   \renewenvironment{abstract}{%
%       \titlepage
%       \null\vfil
%       \@beginparpenalty\@lowpenalty
%       \begin{center}%
%         \bfseries{\huge\@title}%
%         \@endparpenalty\@M
%       \end{center}%
%       \begin{right}%
%        {\bfseries{\Large\@author}}%
%       \end{right}}%
%       
%       \begin{left}
%        \bfseries{\abstractname}
%       \end{left}}
%      {\par\vfil\null\endtitlepage}
% \else
%   \renewenvironment{abstract}{%
%       \if@twocolumn
%         \section*{\abstractname}%
%       \else
%         \small
%         \begin{center}%
%           {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
%         \end{center}%
%         \quotation
%       \fi}
%       {\if@twocolumn\else\endquotation\fi}
% \fi

\newcommand{\createbiblio}[2][apalike]{
  \bibliographystyle{#1}
  \bibliography{#2}
}
\newcommand{\setJapaneseFont}[1]{
  \setCJKmainfont{#1}
}
\newcommand{\setEnglishFont}[1]{
  \setmainfont{#1}
}

%\newcommand\codestart{\begin{verbatim}}
%\newcommand\codeend{\end{verbatim}}


\newcommand\lookupFont{
\def\fontlist{Times New Roman,Tahoma,test}
%\parindent0pt
% \count255=\interactionmode
%  \batchmode
%\@for\next:=\fontlist\do{%
\foreach \n in \fontlist {\typeout{\n}}%\expandafter\IfFontExistsTF{\n}{}{}}
%\interactionmode=\count255
}
%\lookupFont
