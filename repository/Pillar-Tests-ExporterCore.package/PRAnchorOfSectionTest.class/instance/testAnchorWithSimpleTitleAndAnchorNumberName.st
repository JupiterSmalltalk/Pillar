tests
testAnchorWithSimpleTitleAndAnchorNumberName
	| input expected config |
	config := self configuration.
	self addHeader: (Dictionary with: 'autoAnchor' -> true) ofLevel: 2 to: config.
	input := PRDocument new
		add:
				(PRHeader new	level: 2;
						add: (PRText content: '42'));
						add: (PRAnchor named: '42') yourself..
	
	expected := PRDocument new
		add:
				(PRHeader new
						level: 2;
						add: (PRText content: '42'));
		add: (PRAnchor named: '42@1');
		add: (PRAnchor named: '42') yourself.
	self assert: (self executePhase: input with: config) equals: expected