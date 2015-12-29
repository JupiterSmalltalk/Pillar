tests
testTransformWithTwoAnnotation
	| input expected |
	input := PRDocument new
		add:
				(PRParagraph new
						add: PRSlideTitleAnnotation new;
						yourself);
		add: (PRParagraph with: (PRText content: 'Foo!') yourself);
		add:
				(PRParagraph new
						add: PRSlideTitleAnnotation new;
						yourself);
		add: (PRParagraph with: (PRText content: 'Bar') yourself);
		yourself.
	expected := PRDocument new
		add:
				(PRSlide new
						add: (PRParagraph with: (PRText content: 'Foo!') yourself);
						yourself);
		add:
				(PRSlide new
						add: (PRParagraph with: (PRText content: 'Bar') yourself);
						yourself);
		yourself.
	self assert: (self transform: input) equals: expected