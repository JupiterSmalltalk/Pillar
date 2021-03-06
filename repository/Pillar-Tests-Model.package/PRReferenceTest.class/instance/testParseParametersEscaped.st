tests-parsing
testParseParametersEscaped
	| wiki text tree |
	wiki := self markup , 'Alias>' , self referenceString , '|2=\|\=|\|\==1' , self markup .
	text := 'Alias'.
	tree := PRDocument new
		add:
				(PRParagraph new
						add:
								(self actualClass new
										add: (PRText content: 'Alias');
										reference: self referenceString;
										parameters:
												(SmallDictionary new
														add: '2' -> '|=';
														add: '|=' -> '1';
														yourself);
										yourself);
						yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text