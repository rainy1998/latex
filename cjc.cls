%%
%% This is file `cjc.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% cjc.dtx  (with options: `class')
%% 
%% Copyright (C) 2019-2019 by Zeping Lee <zepinglee AT gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    https://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{cjc}
  [2019/06/01 v0.1 A template framework for Chinese journals]
\RequirePackage{ifxetex}
\RequireXeTeX
\newif\ifcjc@chinese
\DeclareOption{chinese}{\cjc@chinesetrue}
\DeclareOption{english}{\cjc@chinesefalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ExecuteOptions{chinese}
\ProcessOptions\relax
\ifcjc@chinese
  \PassOptionsToClass{scheme=chinese}{ctexart}
\else
  \PassOptionsToClass{scheme=plain}{ctexart}
\fi
\PassOptionsToPackage{quiet}{xeCJK}
\LoadClass[UTF8,a4paper,twoside,twocolumn,zihao=5,linespread=1.08]{ctexart}[2016/05/16]
\@ifclasslater{ctexart}{2016/05/16}{}{
  \ClassError{cjc}{%
    This template requires TeX Live\MessageBreak 2016 or later version}{}
}
\RequirePackage{kvdefinekeys}
\RequirePackage{kvsetkeys}
\RequirePackage{amsmath}
\RequirePackage{unicode-math}
\RequirePackage{amsthm}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{caption}
\RequirePackage{url}
\RequirePackage[numbers,sort&compress]{natbib}
\newcommand\cjc@strifeq{\csname str_if_eq_x:nnTF\endcsname}
\newcommand\cjc@fontset{\csname g__ctex_fontset_tl\endcsname}
\cjc@strifeq{\cjc@fontset}{fandol}{
  \setmainfont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]{texgyretermes}
  \setsansfont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]{texgyreheros}
  \setmonofont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
    Scale          = MatchLowercase,
  ]{texgyrecursor}
  \ClassWarningNoLine{cjc}{%
    You are using Fandol font family.\MessageBreak
    Some glyphs may be missing.\MessageBreak
    Please switch to a high-quality font set
  }
}{
  \setmainfont{Times New Roman}
  \setsansfont[Scale=MatchLowercase]{Arial}
  \cjc@strifeq{\cjc@fontset}{mac}{
    \setmonofont[Scale=MatchLowercase]{Menlo}
  }{
    \setmonofont[Scale=MatchLowercase]{Courier New}
  }
}
\cjc@strifeq{\cjc@fontset}{mac}{
  \setCJKmainfont[
       UprightFont = * Light,
          BoldFont = Heiti SC Medium,
        ItalicFont = Kaiti SC,
    BoldItalicFont = Kaiti SC Bold,
  ]{Songti SC}
  \setCJKsansfont[BoldFont=* Medium]{Heiti SC}
  \setCJKfamilyfont{zhsong}[
       UprightFont = * Light,
          BoldFont = * Bold,
  ]{Songti SC}
  \setCJKfamilyfont{zhhei}[BoldFont=* Medium]{Heiti SC}
  \setCJKfamilyfont{zhkai}[BoldFont=* Bold]{Kaiti SC}
  \xeCJKsetwidth{‘’“”}{1em}
}{
  \xeCJKsetup{EmboldenFactor=2}
  \cjc@strifeq{\cjc@fontset}{windows}{
    \IfFileExists{C:/bootfont.bin}{
      \setCJKmainfont[
        BoldFont   = SimHei,
        ItalicFont = KaiTi_GB2312,
      ]{SimSun}
      \setCJKfamilyfont{zhkai}{KaiTi_GB2312}
    }{
      \setCJKmainfont[
        BoldFont   = SimHei,
        ItalicFont = KaiTi
      ]{SimSun}
      \setCJKfamilyfont{zhkai}{KaiTi}
    }
    \setCJKsansfont{SimHei}
    \setCJKfamilyfont{zhsong}{SimSun}
    \setCJKfamilyfont{zhhei}{SimHei}
  }{}
}
\unimathsetup{
  math-style = ISO,
  bold-style = ISO,
  nabla      = upright,
  partial    = upright,
}
\newif\ifcjc@xitsnew
\@ifpackagelater{fontspec}{2017/01/20}{
  \IfFontExistsTF{XITSMath-Regular.otf}{
    \cjc@xitsnewtrue
  }{}
}{}
\ifcjc@xitsnew
  \setmathfont[
    Extension    = .otf,
    BoldFont     = XITSMath-Bold,
    StylisticSet = 8,
  ]{XITSMath-Regular}
  \setmathfont[range={cal,bfcal},StylisticSet=1]{XITSMath-Regular.otf}
\else
  \setmathfont[
    Extension    = .otf,
    BoldFont     = *bold,
    StylisticSet = 8,
  ]{xits-math}
  \setmathfont[range={cal,bfcal},StylisticSet=1]{xits-math.otf}
\fi
\cjc@strifeq{\cjc@fontset}{mac}{
  \newfontfamily\cjc@circlefont{Songti SC Light}
}{
  \cjc@strifeq{\cjc@fontset}{windows}{
    \newfontfamily\cjc@circlefont{SimSun}
  }{
    \ifcjc@xitsnew
      \newfontfamily\cjc@circlefont{XITS-Regular.otf}
    \else
      \newfontfamily\cjc@circlefont{xits-regular.otf}
    \fi
  }
}
\newdimen\bp@
\bp@=1bp
\newcommand\cjc@setchinese{%
  \xeCJKResetPunctClass
}
\newcommand\cjc@setenglish{%
  \xeCJKDeclareCharClass{HalfLeft}{"2018, "201C}%
  \xeCJKDeclareCharClass{HalfRight}{%
    "00B7, "2019, "201D, "2013, "2014, "2025, "2026, "2E3A%
  }%
}
\newcommand\cjc@setdefaultlanguage{%
  \ifcjc@chinese
    \cjc@setchinese
  \else
    \cjc@setenglish
  \fi
}
\geometry{
  paper      = a4paper,
  vmargin    = 2.6cm,
  hmargin    = 2cm,
  headheight = 0.75cm,
  headsep    = 0.15cm,
  twocolumn  = true,
  columnsep  = 0.75cm,
}
\pagestyle{fancy}
\let\sectionmark\@gobble
\renewcommand\headrulewidth{0.4\p@}
\newcommand\cjc@hf@font{\small}
\newcommand\cjc@number{1}
\newcommand\cjc@volume{1}
\fancypagestyle{main}{%
  \fancyhf{}%
  \fancyhead[LO]{\cjc@hf@font \cjc@number{} 期}%
  \fancyhead[CO]{\cjc@hf@font 作者名等：论文题目}%
  \fancyhead[RO,LE]{\cjc@hf@font\thepage}%
  \fancyhead[CE]{\cjc@hf@font 计算机学报}%
  \fancyhead[RE]{\cjc@hf@font \the\year{} 年}%
}
\pagestyle{main}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyhead[L]{\cjc@hf@font 第 \cjc@volume{} 卷\quad 第 \cjc@number{} 期\\\the\year{} 年 \the\month{} 月}%
  \fancyhead[C]{\cjc@hf@font 计算机学报\\CHINESE JOURNAL OF COMPUTERS}%
  \fancyhead[R]{\cjc@hf@font Vol. \cjc@volume\quad No. \cjc@number\\\cjc@doi}%
}
\newcommand\cjc@clc{*****}
\newcommand\cjc@doi{10.1000/182}
\newcommand\cjcsetup{\kvsetkeys{cjc}}
\kv@set@family@handler{cjc}{\expandafter\gdef\csname cjc@#1\endcsname{#2}}
\newcommand\cjc@author{%
}
\def\@maketitle{%
  \newpage
  \null
  \cjc@make@zh@title
  \cjc@make@en@title
}
\def\cjc@make@zh@title{%
  \vspace*{20\bp@}%
  \begingroup
    \centering
    \heiti\zihao{2}\cjc@title\par
  \endgroup
  \vspace*{7.8\bp@}%
  \begingroup
    \zihao{-5}%
    \textbf{摘\quad 要}\quad\cjc@abstract\par
    关键词\quad\cjc@keywords\par
    中图法分类号\quad\cjc@clc\qquad
    DOI 号\quad\cjc@doi\par
  \endgroup
}
\def\cjc@make@en@title{%
  \vspace*{12\bp@}%
  \begingroup
    \centering
    \bfseries\zihao{4}\@nameuse{cjc@title*}\par
  \endgroup
  \vspace{5\bp@}%
  \begingroup
    \zihao{-5}%
    \textbf{Abstract}\quad\@nameuse{cjc@abstract*}\par
    \textbf{Key words}\quad\@nameuse{cjc@keywords*}\par
  \endgroup
}
\renewenvironment{abstract}{%
    \if@twocolumn
      \section*{\abstractname}%
    \else
      \small
      \begin{center}%
        {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
      \end{center}%
      \quotation
    \fi}
    {\if@twocolumn\else\endquotation\fi}
\ctexset{
  section = {
    format     = \heiti\zihao{4},
    beforeskip = 8\bp@,
    afterskip  = 8\bp@,
  },
  subsection = {
    format     = \heiti\zihao{5},
    beforeskip = 2.625\bp@,
    afterskip  = 2.625\bp@,
  },
  subsubsection = {
    format     = \zihao{5},
    beforeskip = \z@,
    afterskip  = \z@,
  },
}
\sloppy
\raggedbottom
\setlength{\parskip}{\z@}
\urlstyle{same}
\def\UrlBreaks{%
  \do\/%
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l%
     \do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L%
     \do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z%
  \do0\do1\do2\do3\do4\do5\do6\do7\do8\do9\do=\do/\do.\do:%
  \do\*\do\-\do\~\do\'\do\"\do\-}
\Urlmuskip=0mu plus 0.1mu
\renewcommand\topfraction{.85}
\renewcommand\bottomfraction{.7}
\renewcommand\textfraction{.15}
\renewcommand\floatpagefraction{.66}
\renewcommand\dbltopfraction{.66}
\renewcommand\dblfloatpagefraction{.66}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\def\fps@figure{htb}
\def\fps@table{htb}
\DeclareCaptionLabelSeparator{zhspace}{\hspace{\ccwd}}
\captionsetup{
  justification  = centerlast,
  font           = small,
  labelsep       = zhspace,
  skip           = 6\bp@,
  figureposition = bottom,
  tableposition  = top,
}
\DeclareCaptionFont{heiti}{\heiti}
\captionsetup[table]{
  font = {heiti,small},
}
\ifcjc@chinese
  \def\mathellipsis{\cdots}
\fi
\protected\def\le{\leqslant}
\protected\def\ge{\geqslant}
\AtBeginDocument{%
  \renewcommand\leq{\leqslant}%
  \renewcommand\geq{\geqslant}%
}
\removenolimits{%
  \int\iint\iiint\iiiint\oint\oiint\oiiint
  \intclockwise\varointclockwise\ointctrclockwise\sumint
  \intbar\intBar\fint\cirfnint\awint\rppolint
  \scpolint\npolint\pointint\sqint\intlarhk\intx
  \intcap\intcup\upint\lowint
}
\AtBeginDocument{%
  \renewcommand\Re{\operatorname{Re}}%
  \renewcommand\Im{\operatorname{Im}}%
}
\AtBeginDocument{%
  \renewcommand\nabla{\mbfnabla}%
}
\newcommand\bm{\symbf}
\renewcommand\boldsymbol{\symbf}
\newcommand\square{\mdlgwhtsquare}
\newcommand\upe{\symup{e}}
\newcommand\upi{\symup{i}}
\newcommand\dif{\mathop{}\!\mathrm{d}}
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}
\newtheoremstyle{cjc}
  {\z@}{\z@}
  {}{2\ccwd}
  {\bfseries}{.}
  {\ccwd}{}
\theoremstyle{cjc}
\newcommand\cjc@assertionname{断言}
\newcommand\cjc@assumptionname{假设}
\newcommand\cjc@axiomname{公理}
\newcommand\cjc@corollaryname{推论}
\newcommand\cjc@definitionname{定义}
\newcommand\cjc@examplename{例}
\newcommand\cjc@lemmaname{引理}
\newcommand\cjc@proofname{证明}
\newcommand\cjc@propositionname{命题}
\newcommand\cjc@remarkname{注}
\newcommand\cjc@theoremname{定理}
\newtheorem{theorem}             {\cjc@theoremname}
\newtheorem{assertion}  [theorem]{\cjc@assertionname}
\newtheorem{axiom}      [theorem]{\cjc@axiomname}
\newtheorem{corollary}  [theorem]{\cjc@corollaryname}
\newtheorem{lemma}      [theorem]{\cjc@lemmaname}
\newtheorem{proposition}[theorem]{\cjc@propositionname}
\newtheorem{assumption}          {\cjc@assumptionname}
\newtheorem{definition}          {\cjc@definitionname}
\newtheorem{example}             {\cjc@examplename}
\newtheorem*{remark}             {\cjc@remarkname}
\DeclareRobustCommand{\qed}{证毕.}
\renewenvironment{proof}[1][\proofname]{\par
  \textbf{\proofname}.\quad
}{%
  \par\raggedleft\qed\par
}
\renewcommand\bibfont{\fontsize{7.5\bp@}{14\bp@}\linespread{1}\selectfont}
\renewcommand\@biblabel[1]{[#1]\hfill}
\newcommand\cjc@atendpackage{\csname ctex_at_end_package:nn\endcsname}
\cjc@atendpackage{hyperref}{
  \hypersetup{
    bookmarksnumbered  = true,
    bookmarksopen      = true,
    bookmarksopenlevel = 1,
    linktoc            = all,
    unicode            = true,
    psdextra           = true,
    hidelinks,
  }
  \AtBeginDocument{%
    \hypersetup{
      pdftitle  = \@title,
      pdfauthor = \@author,
    }%
  }
  \pdfstringdefDisableCommands{
    \let\\\@empty
    \let\hspace\@gobble
  }
  \@ifpackagelater{hyperref}{2019/04/27}{}{%
    \g@addto@macro\psdmapshortnames{\let\mu\textmugreek}%
  }
  \ifcjc@chinese
    \def\equationautorefname~#1\null{公式~(#1)\null}
    \def\footnoteautorefname{脚注}
    \def\itemautorefname~#1\null{第~#1 项\null}
    \def\figureautorefname{图}
    \def\tableautorefname{表}
    \def\appendixautorefname{附录}
    \def\sectionautorefname~#1\null{第~#1 节\null}
    \def\subsectionautorefname~#1\null{第~#1 节\null}
    \def\subsubsectionautorefname~#1\null{第~#1 节\null}
    \def\theoremautorefname{定理}
    \def\HyRef@autopageref#1{\hyperref[{#1}]{第~\pageref*{#1} 页}}
  \fi
}
\cjc@atendpackage{siunitx}{
  \sisetup{
    group-minimum-digits = 4,
    separate-uncertainty = true,
    inter-unit-product   = \ensuremath{{}\cdot{}},
  }
  \ifcjc@chinese
    \sisetup{
      list-final-separator = { 和 },
      list-pair-separator  = { 和 },
      range-phrase         = {～},
    }
  \fi
}
