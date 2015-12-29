tests
testTransformationTwoColumns
	| input expected |
	input := PRDocument new
		add:
				(PRParagraph new
						add: PRColumnsAnnotation new;
						yourself);
		add:
				(PRParagraph new
						add: (PRColumnAnnotation parameters: ((GRSmallDictionary new
								at: 'width' put: '50';
								yourself)) yourself);
						yourself);
		add:
				(PRParagraph new
						add: (PRText content: 'Foo');
						yourself);
		add:
				(PRParagraph new
						add: (PRColumnAnnotation parameters: ((GRSmallDictionary new
								at: 'width' put: '50';
								yourself)) yourself);
						yourself);
		add:
				(PRParagraph new
						add: (PRText content: 'Bar');
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
								((PRColumn width: '50')
										add:
											(PRParagraph new
												add: (PRText content: 'Foo');
												yourself));
						add:
								((PRColumn width: '50')
										add:
												(PRParagraph new
														add: (PRText content: 'Bar');
														yourself);
										yourself));
		yourself.
	self assert: (self transform: input) equals: expected