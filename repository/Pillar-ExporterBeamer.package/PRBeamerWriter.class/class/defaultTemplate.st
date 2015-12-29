accessing
defaultTemplate
	^ '
{{=<% %>=}}
% aspectratio = specifies a 16/9 slide ration
% handout     = removes navigation bar
\documentclass[aspectratio=169, handout]{beamer}

\usetheme{Berkeley}
\usecolortheme{seagull}

\usepackage[english]{babel}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{helvet}
\usepackage{enumitem}
\setbeamertemplate{footline}
{
  \hbox{%
  \begin{beamercolorbox}[wd=.1\paperwidth,ht=2.25ex,dp=1ex,right]
    {bg=white,author in head/foot}%
    \insertframenumber~~
  \end{beamercolorbox}}
  \vskip1pt
}
' , self defaultTemplatePackages
		,
			'

%Information to be included in the title page:
\title{<%title%>}
\subtitle{<%subtitle%>}
\author{<%author%>}
\institute{<%complement%>}
\date{<%date%>}

\begin{document}
<%={{ }}=%>
\frame{\titlepage}

{{{content}}}

%%% Local Variables:
%%% mode: latex
%%% TeX-master: t
%%% End:

\end{document}'