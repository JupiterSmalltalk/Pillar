accessing
defaultTemplatePackages
	^ '
\usepackage{graphicx}
\usepackage[normalem]{ulem}

\definecolor{codebox}{HTML}{e4e4e4}
\newcommand{\ct}[1]{{\sffamily\textup{\colorbox{codebox}{#1}}}}
\usepackage{listings}
\usepackage{textcomp}

\lstnewenvironment{code}[1]{%
	\lstset{%
		% frame=lines,
		frame=single,
		framerule=0pt,
		mathescape=false
	}
}{}

\lstnewenvironment{script}[2][defaultlabel]{%
\renewcommand{\lstlistingname}{Script}%
	\lstset{
		% frame=lines,
		frame=single,
		framerule=0pt,
		mathescape=false,
		name={Script},
		caption={\emph{#2}},
		label={scr:#1}
	}
}{}
\usepackage{fixltx2e}
'