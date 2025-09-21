%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_class}[a latex class for editing my class]

\LoadClass[12pt, a4wide]{article}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage[french]{babel}
\usepackage[T1]{fontenc}
\usepackage{amssymb,amsmath,color}
\usepackage[utf8]{inputenc}
%\usepackage[parfill]{parskip}
%%%%%%%%%%%%%%%%%%%%%%%  symboles mathematiques%%%%%%%%%%%%%%%%%%%%%
\everymath={\displaystyle}
\definecolor{gris25}{gray}{0.75}
%%%%%%%%%%%%%%%%  aspects de la page %%%%%%%%%%%%%%%%%
\usepackage[left=2cm,right=2cm,top=2cm,bottom=2cm]{geometry} 
%%%%%%%%
%\RequirePackage[left=2cm,right=2cm,top=1.5cm,bottom=2cm]{geometry}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{listings}
\RequirePackage{tcolorbox}
\RequirePackage{caption}

\setlength{\textwidth}{6.5in}
\setlength{\textheight}{9.in}
\setlength{\oddsidemargin}{0in}
\setlength{\headheight}{0in}

% create a box to highlight word
\newtcbox{\hword}[1][orange]{on line, arc = 0.3mm,auto outer arc,colback = #1!12!, colframe = #1!60!,colupper = black, boxsep =0mm, left =0.3mm, right = 0.3mm, top =0.4mm, bottom = 0.4mm,boxrule =0.2mm, bottomrule =0.2mm, toprule = 0.2mm}

% default code style
\lstset{
    framerule=1pt,
    frame=tb,
    emphstyle={\small\ttfamily\bfseries\color{Orange}},
    numbers=left,
    numberstyle= \tiny\color{black},
    basicstyle = \small\ttfamily,
    keywordstyle    = \bfseries\color{BrickRed},
    identifierstyle = \bfseries\color{black},
    stringstyle     = \bfseries\color{ForestGreen},
    commentstyle    = \bfseries\color{Violet},
    breaklines      =   true,
    columns         =   fixed,
    basewidth       =   .5em,
    backgroundcolor=\color{Gray!5},
    tabsize=2,
    showspaces=false,
    showstringspaces=false,
}

\DeclareCaptionFormat{myformat}{%
  \colorbox{orange!40}{\large\ttfamily\bfseries#3}
}
\captionsetup[lstlisting]{
  format=myformat, % format
  justification=raggedright,singlelinecheck=false % left
}

\newcommand{\myTitle}[5]{
    \begin{flushleft}
    \textbf{Université de Monastir}\hfill \textbf{A. U. :} \textbf{#1}\\
   \textbf{ ISIMM -- Dept. Maths}\hfill   \textbf{ #4} \\
       \textbf{ Section: #2}
    \end{flushleft}

    \begin{center}\vspace{-20mm}
    \includegraphics[height=2cm]{#3}
    \end{center}
    
    \begin{center}\vspace{0.5cm}
      \textbf{\Large #5}
    \end{center}

    \noindent\rule{\linewidth}{.6pt}
}
%

\usepackage{subcaption}

    \usepackage{tikz}

\usepackage{pgfplots}
\pgfplotsset{compat=1.8}
\usetikzlibrary{fit,backgrounds,matrix,chains,positioning,decorations.pathreplacing,arrows,calc,shapes,shadows.blur}

% Define block styles
\tikzset{%
  every neuron/.style={    circle,    draw,    minimum size=1cm
  },  
  large2 neuron/.style={    circle,    draw,    minimum size=1.5cm,    font=\Large
  },
  square neuron/.style={    draw,    minimum size=1cm
  },
  large neuron/.style={    circle,    draw,    minimum size=1cm,    scale=1.5,    font=\Large
  },
  neuron missing/.style={    draw=none,     scale=2,    text height=0.333cm,    execute at begin node=\color{black}$\vdots$
  },
}


\tikzstyle{io} = [rectangle, rounded corners, minimum width=3cm, minimum height=1cm,text centered, draw=black, fill=red!0]
\tikzstyle{process} = [rectangle, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=orange!0]
\tikzstyle{decision} = [diamond, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=green!0]

%%%%%%%%%%%%%%

\usepackage{pgfornament}
\usepackage{dashrule}\usepackage{multido}
\newlength{\textelarg}
\newcommand{\pointilles}[2]{
 \noindent {#2}%
 \settowidth{\textelarg}{#2}%
 \addtolength{\textelarg}{-.5ex}%
 \addtolength{\textelarg}{-2\textelarg}%
 \addtolength{\textelarg}{\linewidth}%
 \leavevmode\hdashrule[0ex]{\textelarg}{.005pt}{0.5mm}\kern 0pt%
 \addtolength{\textelarg}{-\textelarg}%
 \multido{}{#1}{%
 \\[15\parskip]\leavevmode\hdashrule[0ex]{\linewidth}{.005pt}{0.5mm}\kern 0pt
 }
 \vspace*{-0.5\parskip}
}% pointilles
%
\newcommand{\lpointilles}[1]{
 \leavevmode\hdashrule[0ex]{#1}{.005pt}{0.5mm}\kern 0pt%
}% lpointilles
%%


%%%% macro couleur autre que celles predefinies dans latex
\definecolor{RedTriton}{rgb}{.491 ,.097 ,.066} % couleur rouge du triton
\definecolor{OrangeTriton}{rgb}{.953 ,.502 ,.04} % couleur orange du triton
\definecolor{PinkTriton}{rgb}{.708 ,.055 ,.275} % couleur rose du triton
\def\RedTriton#1{\textcolor{RedTriton}{#1}}
\def\OrangeTriton#1{\textcolor{OrangeTriton}{#1}}
\def\PinkTriton#1{\textcolor{PinkTriton}{#1}}
%%%%%%%%%%%
% FIN COULEUR
%%%% MACRO TITRE POUR COURS, METHODES, ....
\def\title#1{\begin{center}\bf\Large{\textcolor{RedTriton}{#1}}\end{center}}
%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%
\usepackage{lastpage}

\makeatletter
\renewcommand{\@evenfoot}{\hfill\hspace*{4cm}\ 
\thepage{}/\pageref{LastPage}}
\renewcommand{\@oddfoot}{\@evenfoot}
\makeatother
%%%%%%%%%%%%%%%%%%%
\newtheorem{remark}{Remarque}
\newtheorem{Definition}{Définition}
\newtheorem{exercice}{Exercice}
\newtheorem{claim}{Claim}
%\newtheorem{proof}{Proof}

%% macros to write pseudo-code

\newlength{\pgmtab}  %  \pgmtab is the width of each tab in the
\setlength{\pgmtab}{1em}  %  program environment
 \newenvironment{program}{\renewcommand{\baselinestretch}{1}%
\begin{tabbing}\hspace{0em}\=\hspace{0em}\=%
\hspace{\pgmtab}\=\hspace{\pgmtab}\=\hspace{\pgmtab}\=\hspace{\pgmtab}\=%
\hspace{\pgmtab}\=\hspace{\pgmtab}\=\hspace{\pgmtab}\=\hspace{\pgmtab}\=%
\+\+\kill}{\end{tabbing}\renewcommand{\baselinestretch}{\intl}}
\newcommand {\BEGIN}{{\bf begin\ }}
\newcommand {\ELSE}{{\bf else\ }}
\newcommand {\IF}{{\bf if\ }}
\newcommand {\FOR}{{\bf for\ }}
\newcommand {\TO}{{\bf to\ }}
\newcommand {\DO}{{\bf do\ }}
\newcommand {\WHILE}{{\bf while\ }}
\newcommand {\ACCEPT}{{\bf accept}}
\newcommand {\REJECT}{\mbox{\bf reject}}
\newcommand {\THEN}{\mbox{\bf then\ }}
\newcommand {\END}{{\bf end}}
\newcommand {\RETURN}{\mbox{\bf return\ }}
\newcommand {\HALT}{\mbox{\bf halt}}
\newcommand {\REPEAT}{\mbox{\bf repeat\ }}
\newcommand {\UNTIL}{\mbox{\bf until\ }}
\newcommand {\TRUE}{\mbox{\bf true\ }}
\newcommand {\FALSE}{\mbox{\bf false\ }}
\newcommand {\FORALL}{\mbox{\bf for all\ }}
\newcommand {\DOWNTO}{\mbox{\bf down to\ }}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Commands to include figures


%% PSfigure

\newcommand{\PSfigure}[3]{\begin{figure}[t] 
  \centerline{\vbox to #2 {\vfil \psfig{figure=#1.eps,height=#2} }} 
  \caption{#3}\label{#1} 
  \end{figure}} 
\newcommand{\twoPSfigures}[5]{\begin{figure*}[t]
  \centerline{%
    \hfil
    \begin{tabular}{c}
        \vbox to #3 {\vfil\psfig{figure=#1.eps,height=#3}} \\ (a)
    \end{tabular}
    \hfil\hfil\hfil
    \begin{tabular}{c}
        \vbox to #3 {\vfil\psfig{figure=#2.eps,height=#3}} \\ (b)
    \end{tabular}
    \hfil}
  \caption{#4}
  \label{#5}
%  \sublabel{#1}{(a)}
%  \sublabel{#2}{(b)}
  \end{figure*}}


\newcounter{fignum}


\newcommand{\fig}[3]{%
\begin{minipage}{\textwidth}
\centering\epsfig{file=#1.eps,height=#2}
\caption{#3} \label{#1}
\end{minipage}
}%


% ffigure
% Usage: \ffigure{name of file}{height}{caption}{label}
\newcommand{\ffigure}[4]{\begin{figure} 
  \centerline{\vbox to #2 {\vfil \psfig{figure=#1.eps,height=#2} }} 
  \caption{#3}\label{#4} 
  \end{figure}} 

% ffigureh
% Usage: \ffigureh{name of file}{height}{caption}{label}
\newcommand{\ffigureh}[4]{\begin{figure}[!h] 
  \centerline{\vbox to #2 {\vfil \psfig{figure=#1.eps,height=#2} }} 
  \caption{#3}\label{#4} 
  \end{figure}} 



\newcommand{\R}{\mathbb{R}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\N}{\mathbb{N}}


\newenvironment{proof}{\noindent {\sc Proof:}}{$\Box$ \medskip}

\newenvironment{problems} % Definition of problems
 {\renewcommand{\labelenumi}{\S\theenumi}
        \begin{enumerate}}{\end{enumerate}}