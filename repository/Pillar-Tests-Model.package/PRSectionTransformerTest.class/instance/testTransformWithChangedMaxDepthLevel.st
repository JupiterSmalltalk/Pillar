tests
testTransformWithChangedMaxDepthLevel
	| input expected |
	input := PRDocument new
		add:
				(PRHeader new
						level: 1;
						add: (PRText content: 'Bar') yourself);
		add: (PRParagraph with: (PRText content: 'Foo') yourself);
		add:
				(PRHeader new
						level: 2;
						add: (PRText content: 'Bar2') yourself);
		add: (PRParagraph with: (PRText content: 'Foo2') yourself);
		yourself.
	expected := PRDocument new
		add:
			(PRSection new
				add:
						(PRHeader new
								level: 1;
								add: (PRText content: 'Bar') yourself);
				add: (PRParagraph with: (PRText content: 'Foo') yourself);
				add:
						(PRHeader new
								level: 2;
								add: (PRText content: 'Bar2') yourself);
				add: (PRParagraph with: (PRText content: 'Foo2') yourself);
				yourself) yourself.
	self
		assert:
			((self actualClass
				maxDepthLevel: 1;
				new)
				start: input;
				topNode)
		equals: expected.	"After the test we reinitialize the PRSectionTransformer to get the normal MaxDepthLevel"
	self actualClass initialize