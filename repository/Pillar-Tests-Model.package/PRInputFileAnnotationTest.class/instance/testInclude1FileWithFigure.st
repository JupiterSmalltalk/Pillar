tests
testInclude1FileWithFigure
	| wiki wikiTransform text tree |
	wiki := '${inputFile:tata/toto.pillar}$'.
	wikiTransform := '+tata/fig.png|width=50+'.
	text := 'tata/fig.png'.
	tree := PRDocument new
		add:
			(PRParagraph new
				add:
					(PRFigure new
						reference: 'tata/fig.png';
						parameterAt: 'width' put: '50'; 
						yourself);
				yourself);
		yourself.
	self assertWikiTransform: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wikiTransform.
	self assertTree: tree equalsText: text