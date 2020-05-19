\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{cpp}[2020/05/19 v0.0.1 The LaTeX template for Chinese papers]
\typeout{Document Class `cpp' v0.0.1 by SXKDZ (2020/05/19)}

\LoadClass[11pt,linespread=1.3,a4paper,twoside]{ctexart}

\ctexset{punct=banjiao}

\RequirePackage{xeCJK}
\xeCJKsetcharclass{`①}{`⑩}{1}

\setCJKmainfont[BoldFont=FZHei-B01S, ItalicFont=FZKai-Z03S,Mapping=fullwidth-stop]{FZShuSong-Z01S}
\setCJKmonofont[Mapping=fullwidth-stop]{FZKai-Z03S}

\setCJKfamilyfont{kai}[Mapping=fullwidth-stop]{FZKai-Z03S}
\setCJKfamilyfont{hei}[Mapping=fullwidth-stop]{FZHei-B01S}
\setCJKfamilyfont{cuhei}[Mapping=fullwidth-stop]{FZDaHei-B02S}
\setCJKfamilyfont{songhei}[Mapping=fullwidth-stop]{FZSongHei-B07S}

\newcommand{\kaiti}{\CJKfamily{kai}}
\renewcommand{\heiti}{\CJKfamily{hei}}
\newcommand{\cuheiti}{\CJKfamily{cuhei}}
\newcommand{\songheiti}{\CJKfamily{songhei}}

\RequirePackage[top=30mm,bottom=30mm,left=30mm,right=30mm]{geometry}

\RequirePackage[xetex,unicode]{hyperref}
\hypersetup{colorlinks}

\RequirePackage{url}
\PassOptionsToPackage{hyphens}{url}
\def\UrlFont{\ttfamily}
\newcommand{\mailto}[1]{\href{mailto:#1}{\texttt{#1}}}

\RequirePackage{amsmath,amssymb,amsfonts,mathrsfs,bm}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\RequirePackage{lmodern}

\DeclareMathOperator*{\argmin}{argmin}
\DeclareMathOperator*{\argmax}{argmax}
\def\tagform@#1{\maketag@@@{（\ignorespaces#1\unskip\@@italiccorr）}}

\RequirePackage{accents}
% left arrow over text
\DeclareRobustCommand{\cev}[1]{%
	\mathpalette\do@cev{#1}%
}
\newcommand{\do@cev}[2]{%
	\fix@cev{#1}{+}%
	\reflectbox{$\m@th#1\vec{\reflectbox{$\fix@cev{#1}{-}\m@th#1#2\fix@cev{#1}{+}$}}$}%
	\fix@cev{#1}{-}%
}
\newcommand{\fix@cev}[2]{%
	\ifx#1\displaystyle
		\mkern#23mu
	\else
		\ifx#1\textstyle
			\mkern#23mu
		\else
			\ifx#1\scriptstyle
				\mkern#22mu
			\else
				\mkern#22mu
			\fi
		\fi
	\fi
}

\RequirePackage[authoryear,compress]{natbib}

\RequirePackage{fancyhdr,lastpage}

\setlength{\headheight}{40pt}
\setlength{\footskip}{20pt}

\newcommand*{\tabref}[1]{\tablename~\ref{#1}}
\newcommand*{\figref}[1]{\figurename~\ref{#1}}
\newcommand*{\algoref}[1]{算法~\ref{#1}}
\newcommand*{\listingref}[1]{\lstlistingname~\ref{#1}}
\renewcommand*{\eqref}[1]{公式（\ref{#1}）}
\newcommand*{\secref}[1]{第~\ref{#1}~节}
\newcommand*{\chapref}[1]{第~\ref{#1}~章}

\RequirePackage[skip=3pt,width=.8\textwidth,font=small,labelsep=space]{caption}

\RequirePackage{subcaption}
\DeclareCaptionLabelFormat{quanjiaoparens}{（{#2}）}
\captionsetup[sub]{font=small,labelformat=quanjiaoparens}

\RequirePackage{graphicx,float}
\RequirePackage{multirow,booktabs}

\RequirePackage{listings}
\RequirePackage[dvipsnames]{xcolor}
\lstset{
	backgroundcolor		= \color{white},
	basicstyle			= \zihao{5}\ttfamily,
	columns				= flexible,
	breakatwhitespace	= false,
	breaklines			= true,
	captionpos			= b,
	frame				= single,
	numbers				= left,
	numbersep			= 5pt,
	showspaces			= false,
	showstringspaces	= false,
	showtabs			= false,
	stepnumber			= 1,
	rulecolor			= \color{black},
	tabsize				= 2,
	texcl				= true,
	title				= \lstname,
	escapeinside		= {\%*}{*)},
	extendedchars		= false,
	mathescape			= true,
	xleftmargin			= 3em,
	xrightmargin		= 3em,
}
\lstset{
	numberstyle	= \color{gray},
	keywordstyle= \color{blue},
	commentstyle= \itshape\color{green!40!black},
	stringstyle = \color{orange},
}

\renewcommand{\lstlistingname}{代码}

\RequirePackage[linesnumbered,ruled,vlined]{algorithm2e}
\renewcommand{\algorithmcfname}{算法}
\SetKwInput{KwIn}{输入}
\SetKwInput{KwOut}{输出}
\newcommand{\commentstyle}[1]{\texttt{#1}}
\SetCommentSty{commentstyle}

\RequirePackage{hyperref}
\colorlet{CPPlinkcolor}{violet!85!black}
\colorlet{CPPcitecolor}{YellowOrange!85!black}
\colorlet{CPPurlcolor}{Aquamarine!85!black}
\hypersetup{
	linkcolor	= CPPlinkcolor,
	citecolor	= CPPcitecolor,
	urlcolor	= CPPurlcolor,
	colorlinks	= true,
	breaklinks	= true
}

\RequirePackage{authblk}
\renewcommand\Authsep{\quad}
\renewcommand\Authand{\quad}
\renewcommand\Authands{\quad}
%\renewcommand\Authfont{\kaiti}
\renewcommand\Affilfont{\kaiti}
\setlength{\affilsep}{0.5em}

\def\@email{}
\def\@subtitle{}
\newcommand{\email}[1]{\renewcommand{\@email}{#1}}
\newcommand{\subtitle}[1]{\renewcommand{\@subtitle}{#1}}

\newcommand{\oldmaketitle}{\maketitle}
\renewcommand{\maketitle}{
	\begin{center}
		\vspace*{1.5\baselineskip}
		{\huge\cuheiti{\noindent\ignorespaces\@title}\par}
		\ifx\@subtitle\empty{}\else{\vskip .5em{\Large\textbf{\noindent\ignorespaces\@subtitle}\par}}\fi
		\vskip 1.5em
		\ifnum\value{authors}=0{}\else{{\noindent\ignorespaces\@author\par}}\fi
		\ifx\@email\empty{}\else{\noindent\ignorespaces\mailto\@email\par}\fi
	\end{center}
	\vskip 2em
	\thispagestyle{empty}
}
