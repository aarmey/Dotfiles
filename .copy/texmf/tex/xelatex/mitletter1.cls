\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mitletter1}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}
\ProcessOptions
\LoadClass{letter}
\usepackage[dvips]{graphics}
\usepackage{xcolor,fontspec}

\raggedright
\setlength{\topmargin}{-1in}
\setlength{\oddsidemargin}{.25in}
\setlength{\evensidemargin}{.25in}
\setlength{\textwidth}{6.25in}
\setlength{\textheight}{8.5in}
\setlength{\headsep}{1in}
\setlength{\footskip}{1.625in}
\RequirePackage{fontspec}

\newfontfamily\boldfont[Color=7e0004, Scale=0.75]{Myriad Pro Bold SemiExtended}
\newfontfamily\regularfont[Color=black, Scale=0.75]{Myriad Pro SemiExtended}
\newfontfamily\boldfontb[Color=black, Scale=0.75]{Myriad Pro Bold SemiExtended}
\newfontfamily\italicfont[Color=black, Scale=1.0]{Myriad Pro Italic}
\setmainfont{Myriad Pro}


\renewcommand{\ps@headings}{%
  \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@oddhead{\slshape\headtoname{} \ignorespaces\toname
                    \@date
                    \hfil \pagename{} \thepage}%
      \let\@evenhead\@oddhead}
\renewcommand*{\opening}[1]{\ifx\@empty\fromaddress
  \thispagestyle{firstpage}%
    \@date\\%
  \else  % home address
    \thispagestyle{empty}%
    {\raggedleft\begin{tabular}{l@{}}\ignorespaces
      \fromaddress \\*[2\parskip]%
      \@date \end{tabular}\par}%
  \fi
  \vspace{2\parskip}%
  {\raggedright \toname \\ \toaddress \par}%
  \vspace{2\parskip}%
  #1\par\nobreak\reversemarginpar\marginpar{\hspace*{.35in}\raisebox{.2in}{\scalebox{.33}{\includegraphics*{/Users/asm/Library/texmf/tex/xelatex/mitlogo.pdf}}}\normalmarginpar}}
\renewcommand*{\signature}[1]{\def\fromsig{\italicfont #1}}
\newcommand{\officename}{Koch Institute for Integrative\\ Cancer Research}
\newcommand{\associateofficename}{Associate Office Name}
\newcommand{\roomnumber}{76-361F}
\newcommand{\phonenum}{617.324.4404}
\newcommand{\website}{asmlab.org}
\newcommand{\email}{aameyer@mit.edu}
\newcommand{\person}{Aaron S. Meyer}
\newcommand{\ID}{Research Fellow}

\newcommand{\sigImg}{\includegraphics[width=1.5in]{/Users/asm/Library/texmf/tex/xelatex/signature.pdf}}

\newsavebox{\headone}
\sbox{\headone}{\parbox[t]{2.5in}{\boldfont{Massachusetts Institute of Technology}}}
\newsavebox{\headtwo}
\sbox{\headtwo}
     {\parbox[t]{2in}{\setlength{\baselineskip}{9.2pt}\boldfontb{\person}\\\regularfont{\ID}}}
\newsavebox{\headthree}
\sbox{\headthree}
     {\parbox[t]{2in}{\setlength{\baselineskip}{9.2pt}\boldfont{\officename}\\
       \regularfont{Building \roomnumber}}}
\newsavebox{\headfour}
\sbox{\headfour}
     {\parbox[t]{2in}{\setlength{\baselineskip}{9.2pt}\regularfont{77 Massachusetts Avenue}\\
       \regularfont{Cambridge, Massachusetts}\\
       \regularfont{02139-4307}}}
\newsavebox{\headfive}
\sbox{\headfive}
     {\parbox[t]{2in}{\setlength{\baselineskip}{9.2pt}\regularfont{Phone \hspace{.13cm}\phonenum}\\
       \regularfont{Email \hspace{.23cm}\email}\\
       \regularfont{\website}}}
\newsavebox{\header}
\sbox{\header}
     {\begin{tabular*}{\textwidth}{lll@{\extracolsep{\fill}}}
	 \usebox{\headone} & \usebox{\headtwo} & \usebox{\headfour} \\
	 & \usebox{\headthree} & \raisebox{-.1in}{\usebox{\headfive}}
     \end{tabular*}}

\renewcommand{\ps@firstpage}
	     {\setlength{\headheight}{70pt}\setlength{\headsep}{25pt}%
	       \renewcommand{\@oddhead}{\usebox{\header}}%
	       \renewcommand{\@evenhead}{}\renewcommand{\@evenfoot}{}}

\providecommand{\@evenhead}{}\providecommand{\@oddhead}{}
\providecommand{\@evenfoot}{}\providecommand{\@oddfoot}{}

\pagestyle{headings}
\pagestyle{empty}
