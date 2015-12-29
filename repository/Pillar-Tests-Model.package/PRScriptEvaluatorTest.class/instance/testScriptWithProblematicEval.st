tests
testScriptWithProblematicEval
	| input |
	input := PRDocument new
		add:
				((PRScript content: 'Object SomethingThatIsNotAMethod')
						eval: true;
						yourself);
		yourself.
	self assert: (self transform: input) equals: input