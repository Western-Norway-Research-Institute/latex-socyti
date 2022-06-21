% Define class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{socyti}[2022-06-21 SOCYTI LaTeX class]
\LoadClass[a4paper]{article}

% Packages
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}
\usepackage[T1]{fontenc}
\usepackage{hyperref}
\usepackage{csquotes}
\usepackage{graphicx}
\usepackage{authblk}
\usepackage[a4paper, margin={3cm, 2cm}]{geometry}
\usepackage[yyyymmdd]{datetime}
\renewcommand{\dateseparator}{--}

% citation style APA
\usepackage[
    backend=biber,
    style=apa,
    citestyle=authoryear
]{biblatex}

% Variables
\newcommand\deliverable[1]{\renewcommand\@deliverable{#1}}
\newcommand\@deliverable{}

\newcommand\subtitle[1]{\renewcommand\@subtitle{#1}}
\newcommand\@subtitle{}

\newcommand\annotation[1]{\renewcommand\@annotation{#1}}
\newcommand\@annotation{}

\newcommand\wpnumber[1]{\renewcommand\@wpnumber{#1}}
\newcommand\@wpnumber{}

% Title Page
\renewcommand{\maketitle}{

    \begin{titlepage}
        \centering\includegraphics[width=0.33\textwidth]{figures/socyti-header.jpg}

        \vspace*{1cm}

        {\Large\bfseries\sffamily\@title}

        \vspace*{1cm}

        {\rule{\textwidth}{2pt}}

        \begin{flushleft}
            \begin{tabular}{ll}
                {\large\bfseries\sffamily Deliverable \@deliverable} & {\large\bfseries\sffamily \@subtitle} \\
                & {\large\sffamily \@annotation}\\
            \end{tabular}
        \end{flushleft}

        \noindent{\rule{\textwidth}{2pt}}

        \vspace*{1cm}

        \noindent{\normalsize\bfseries\@author}

        \noindent{\today}

        \vspace*{1cm}

        {Work Package \@wpnumber}

    \end{titlepage}
}

\ProcessOptions