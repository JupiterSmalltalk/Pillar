tests
testTransformationOnColumn
	| input expected |
	input := PRDocument new
		add:
				(PRParagraph new
						add: PRColumnsAnnotation new;
						yourself);
		add:
				(PRParagraph new
						add: (PRColumnAnnotation parameters: (GRSmallDictionary new
								at: 'width' put: '100';
								yourself) yourself);
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
	expected := PRDocument new
		add:
				(PRColumns new
						add:
							((PRColumn width: '100')
								add:
										(PRParagraph new
												add: (PRText content: 'Foo');
												yourself);
								yourself));
		yourself.
	self assert: (self transform: input) equals: expected