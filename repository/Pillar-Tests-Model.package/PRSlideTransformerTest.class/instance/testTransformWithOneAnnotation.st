tests
testTransformWithOneAnnotation
	| input expected |
	input := PRDocument new
		add:
				(PRParagraph new
						add: PRSlideTitleAnnotation new;
						yourself);
		add: (PRParagraph with: (PRText content: 'Foo!') yourself);
		yourself.
	expected := PRDocument new
		add:
			(PRSlide new
				add: (PRParagraph with: (PRText content: 'Foo!') yourself);
				yourself) yourself.
	self assert: (self transform: input) equals: expected