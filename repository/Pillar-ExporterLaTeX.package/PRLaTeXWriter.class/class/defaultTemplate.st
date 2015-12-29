accessing
defaultTemplate
		^ '
{{=<% %>=}}
\documentclass[a4paper,10pt,twoside]{book}

', self defaultTemplatePackages, '

\usepackage[
	colorlinks=true,
	linkcolor=black,
	urlcolor=black,
	citecolor=black
]{hyperref}

\begin{document}

<%content%>

\end{document}
'