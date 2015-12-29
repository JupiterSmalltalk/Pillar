tests
testTransformationWithColumnWithoutColumns
	| input |
	input := PRDocument new
		add:
				(PRParagraph new
						add: PRColumnAnnotation new;
						yourself);
		add:
				(PRParagraph new
						add: (PRText content: 'Foo');
						yourself);
		add:
				(PRParagraph new
						add: PREndColumnsAnnotation new;
						yourself);
		yourself.
	self should: [ self transform: input ] raise: PRError