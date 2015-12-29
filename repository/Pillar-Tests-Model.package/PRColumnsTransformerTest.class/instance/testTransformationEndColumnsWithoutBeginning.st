tests
testTransformationEndColumnsWithoutBeginning
	| input |
	input := PRDocument new
		add:
				(PRParagraph new
						add: PREndColumnsAnnotation new;
						yourself);
		yourself.
	self should: [ self transform: input ] raise: PRError