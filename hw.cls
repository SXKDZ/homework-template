\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{hw}[2019/09/25 v0.0.1 The LaTeX template for homework]
\typeout{Document Class `hw' v0.0.1 by SXKDZ (2019/09/25)}

\LoadClass[zihao=5,scheme=plain,linespread=1.2,a4paper,oneside]{ctexart}

\ctexset{punct=banjiao}

\RequirePackage{xeCJK}
\xeCJKsetcharclass{`①}{`⑩}{1}

\setCJKmainfont[BoldFont=STHeiti, ItalicFont=STKaiti,Mapping=fullwidth-stop]{STSong}
\setCJKmonofont[Mapping=fullwidth-stop]{STKaiti}

\setCJKfamilyfont{kai}[Mapping=fullwidth-stop]{STKaiti}
\setCJKfamilyfont{hei}[Mapping=fullwidth-stop]{STHeiti}

\newcommand{\kaiti}{\CJKfamily{kai}}
\renewcommand{\heiti}{\CJKfamily{hei}}

\RequirePackage[top=30mm,bottom=25mm,left=30mm,right=30mm]{geometry}

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

\RequirePackage{graphicx,float}

\RequirePackage{listings,xcolor}
\lstset{
	backgroundcolor=\color{white},
	basicstyle=\zihao{5}\ttfamily,
	columns=flexible,
	breakatwhitespace=false,
	breaklines=true,
	captionpos=b,
	frame=single,
	numbers=left,
	numbersep=5pt,
	showspaces=false,
	showstringspaces=false,
	showtabs=false,
	stepnumber=1,
	rulecolor=\color{black},
	tabsize=2,
	texcl=true,
	title=\lstname,
	escapeinside={\%*}{*)},
	extendedchars=false,
	mathescape=true,
	xleftmargin=3em,
	xrightmargin=3em,
}
\lstset{
	numberstyle=\color{gray},
	keywordstyle=\color{blue},
	commentstyle=\itshape\color{green!40!black},
	stringstyle=\color{orange},
}

\RequirePackage[linesnumbered,ruled,vlined]{algorithm2e}
\SetKwInput{KwIn}{Input}
\SetKwInput{KwOut}{Output}
\newcommand{\commentstyle}[1]{\texttt{#1}}
\SetCommentSty{commentstyle}

\RequirePackage{booktabs}

\RequirePackage{fancyhdr}

\setlength{\headheight}{15pt}
\setlength{\footskip}{15pt}

\pagestyle{fancy}
\fancyhf{}
\lhead{\hw@assignmentnumber}
\chead{\hw@coursetitle~(\hw@semester)}
\rhead{\hw@university}
\renewcommand{\headrulewidth}{0.75pt}

\cfoot{\thepage}
\renewcommand{\footrulewidth}{0pt}

\RequirePackage{multirow,dcolumn,float}

\newcommand{\newproblemset}[3]{
	\newcounter{#1}[section]
	\@namedef{make#1}{\section*{#3}}

	\newenvironment{#1}[1][\empty]{
		\refstepcounter{#1}
	
		\ifx\empty##1\subsection*{#2 \csname the#1\endcsname}\else\subsection*{#2 \csname the#1\endcsname: ##1}\fi
		\kaiti}{}

	\newenvironment{#1*}[1][\empty]{	
		\ifx\empty##1\subsection*{#2}\else\subsection*{#2: ##1}\fi
		\kaiti}{}
}

\newenvironment{answer}{
	\vspace*{2mm}
	\noindent
	\textit{Answer:}\enskip}{}

\newcommand{\oldmaketitle}{\maketitle}
\renewcommand{\maketitle}{
	\pagestyle{fancy}
	\thispagestyle{plain}
	\newpage
	\setcounter{page}{1}
	\noindent
	\begin{center}
		\framebox[\textwidth][c]{
			\vbox{
				\vspace{2mm}
				
				\makebox[0pt][l]{\quad \hw@coursetitle~(\hw@semester)}%
				\hfill
				\makebox[0pt][r]{\today \quad}

				\vspace{3mm}
				\begin{center}
					\ifx\hw@assignmenttitle\empty\textbf{\Large \hw@assignmentnumber}\else\textbf{\Large \hw@assignmentnumber:
					\hw@assignmenttitle}\fi
				\end{center}
				
				\vspace{3mm}
				\makebox[\textwidth][c]{\hw@studentname}
				\makebox[\textwidth][c]{\hw@studentnumber}
				\makebox[\textwidth][c]{\hw@studentaffliation}
				\makebox[\textwidth][c]{\mailto{\hw@studentemail}}
				
				\vspace{2mm}
			}
		}
	\end{center}
	\vspace*{1mm}
}

\def\hw@coursetitle{}
\def\hw@semester{}
\def\hw@university{}
\def\hw@assignmenttitle{}
\def\hw@assignmentnumber{}
\def\hw@studentname{}
\def\hw@studentnumber{}
\def\hw@studentaffliation{}
\def\hw@studentemail{}
\newcommand{\course}[3]{%
	\def\hw@coursetitle{#1}
	\def\hw@semester{#2}
	\def\hw@university{#3}
}
\newcommand{\assignment}[2]{%
	\def\hw@assignmentnumber{#1}
	\def\hw@assignmenttitle{#2}
}
\newcommand{\student}[4]{%
	\def\hw@studentname{#1}
	\def\hw@studentnumber{#2}
	\def\hw@studentaffliation{#3}
	\def\hw@studentemail{#4}
}