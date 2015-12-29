tests
testAnchorWithSimpleTitle
	| input expected |
	input := PRDocument new
		add:
				(PRHeader new
						level: 2;
						add: (PRText content: 'foo'));
		yourself.
	expected := PRDocument new
		add:
				(PRHeader new
						level: 2;
						add: (PRText content: 'foo'));
		add: (PRAnchor named: 'foo') yourself.
	self assert: (self transform: input) equals: expected