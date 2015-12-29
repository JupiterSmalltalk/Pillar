tests
testTransformationBeginningColumnsWithoutEnding
	| input |
	input := PRDocument new
		add:
			(PRParagraph new
				add: PRColumnsAnnotation new;
				yourself);
		add:
			(PRParagraph new
				add:
					(PRColumnAnnotation
						parameters:
							(GRSmallDictionary new
								at: 'width' put: '100';
								yourself)) yourself);
		add:
			(PRParagraph new
				add: (PRText content: 'Foo');
				yourself);
		yourself.
	self should: [ self transform: input ] raise: PRError