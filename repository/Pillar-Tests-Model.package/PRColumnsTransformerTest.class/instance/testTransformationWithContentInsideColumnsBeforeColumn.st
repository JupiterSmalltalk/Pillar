tests
testTransformationWithContentInsideColumnsBeforeColumn
	| input expected |
	input := PRDocument new
		add:
				(PRParagraph new
						add: PRColumnsAnnotation new;
						yourself);
		add: (PRParagraph with: (PRText content: 'Foo') yourself);
		add:
				(PRParagraph new
						add: (PRColumnAnnotation parameters: ((GRSmallDictionary new
								at: 'width' put: '100';
								yourself)) yourself);
						yourself);
		add: (PRParagraph with: (PRText content: 'Bar') yourself);
		add:
				(PRParagraph new
						add: PREndColumnsAnnotation new;
						yourself);
		yourself.
	expected := PRDocument new
		add:
				(PRColumns new
						add: (PRParagraph with: (PRText content: 'Foo') yourself);
						add: ((PRColumn width: '100') add: (PRParagraph with: (PRText content: 'Bar') yourself) yourself);
						yourself);
		yourself.
	self assert: (self transform: input) equals: expected