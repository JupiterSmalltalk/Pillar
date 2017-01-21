as yet unclassified
testCheckRawWithGoodType
	| input |
	input := PRDocument new
		add:
			(PRParagraph new
				add: (PRRaw content: '<p>Timoleon</p>' type: 'html');
				yourself);
		yourself.
	self
		assert:
			(self actualClass
				executeOn:
					(PRCompilationContext
						withDocument: input
						withConfiguration: PRPillarConfiguration new)) input
		equals: input