# SOCYTI Latex Template

Latex Template for SOCYTI

## The SOCYTI Document Class

The SOCYTI document class extends the article class in latex. See more on [classes](https://en.wikibooks.org/wiki/LaTeX/Document_Structure#Document_classes).

One of the ways that the article class is extended is by introducing a custom
titlepage. This titlepage is generated autmatically. To change the contents of
the coverpage one must change the document variables as shown below

```latex
\documentclass{socyti}
\addbibresource{references.bib} %Imports bibliography file

% Document Variables
\title{Violence-Inducing Behaviour Prevention in Social-Cyber Space of Local Communities}
\author[1]{Author Authorson}
\author[2]{Author Author}
\affil[1]{Organisation}
\affil[2]{Organisation}
\date{\today}
\deliverable{X.Y}
\subtitle{Title}
\annotation{ANNOTATION}
\wpnumber{NUMBER}
\wptitle{WP Title}
\shorttitle{Short Title}
\distlevel{Public (P)}
\duedate{\formatdate{01}{08}{2022}}
\relateddeliverables{DX.Y, DX.Y}
\leadingpartners{Organisation}

\begin{document}
    % Content skipped to not make readme too long.
\end{document}
```

## Further Work and Errors

Please feel free to use this template when writing notes and papers on behalf of vestlandsforsking.

If errors are found or improvements identified, please let the author / contributors know by creating a Github Issue in the repository.