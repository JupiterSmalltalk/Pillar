tests
testTransformationWithColumnsInColumns
	| input |
	input := PRDocument new
		add:
				(PRParagraph new
						add: PRColumnsAnnotation new;
						yourself);
		add:
				(PRParagraph new
						add: PRColumnsAnnotation new;
						yourself);
		add:
				(PRParagraph new
						add: PREndColumnsAnnotation new;
						yourself);
		add:
				(PRParagraph new
						add: PREndColumnsAnnotation new;
						yourself);
		yourself.
	self should: [ self transform: input ] raise: PRError