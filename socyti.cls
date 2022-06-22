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
\usepackage[a4paper, margin={3cm, 3cm}]{geometry}
\usepackage[yyyymmdd]{datetime}
\renewcommand{\dateseparator}{--}
\usepackage{fancyhdr}
\usepackage{tabularx,colortbl}
\usepackage[parfill]{parskip}

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

\newcommand\wptitle[1]{\renewcommand\@wptitle{#1}}
\newcommand\@wptitle{}

\newcommand\shorttitle[1]{\renewcommand\@shorttitle{#1}}
\newcommand\@shorttitle{}

\newcommand\distlevel[1]{\renewcommand\@distlevel{#1}}
\newcommand\@distlevel{}

\newcommand\duedate[1]{\renewcommand\@duedate{#1}}
\newcommand\@duedate{}

\newcommand\relateddeliverables[1]{\renewcommand\@relateddeliverables{#1}}
\newcommand\@relateddeliverables{}

\newcommand\leadingpartners[1]{\renewcommand\@leadingpartners{#1}}
\newcommand\@leadingpartners{}

% Colours
\definecolor{rowgray}{RGB}{191, 191, 191}

% Header
\pagestyle{fancy}
\fancyhf{}
\lhead{D\@wpnumber: \@shorttitle}
\rhead{\@distlevel}

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

        \noindent{\normalsize\@author}

        \noindent{\today}

        \vspace*{1cm}

        {\sffamily Work Package \@wpnumber}

        \newpage

        \begin{table}[h]
            \begin{tabularx}{\textwidth}{|l|X|}
                \hline
                \rowcolor{rowgray}
                Distribution level: & Public (P), Restricted to other programme participants (PP), Restricted to a group specified by the consortium (RE), Confidential (CO) \\
                \hline
                \rowcolor{rowgray}
                Due date: &  \@duedate\\
                \hline
                \rowcolor{rowgray}
                Sent to the project manager & \\
                \hline
                \rowcolor{rowgray}
                No. of document & D \@deliverable \\
                \hline
                Title & \@title \\
                \hline
                Status \& Version & \\
                \hline
                Work Package & \@wpnumber: \@wptitle\\
                \hline
                Related Deliverables & \@relateddeliverables \\
                \hline
                Leading Partner & \@leadingpartners \\
                \hline
                Authors &  \\
                \hline
                Reviewers & \\
                \hline
                Keywords & \\
                \hline
            \end{tabularx}
        \end{table}
        \newpage
    \end{titlepage}
}

\ProcessOptions