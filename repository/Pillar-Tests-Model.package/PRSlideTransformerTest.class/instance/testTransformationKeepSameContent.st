tests
testTransformationKeepSameContent
	| input |
	input := PRDocument new
		add:
				(PRHeader new
						level: 1;
						add: (PRText content: 'Bar') yourself);
		add: (PRParagraph with: (PRText content: 'Foo') yourself);
		add: PRSlideTitleAnnotation new;
		add: (PRParagraph with: (PRText content: 'Foo2') yourself);
		yourself.
	self assert: (PRPillarWriter write: (self transform: input)) equals: (PRPillarWriter write: input)