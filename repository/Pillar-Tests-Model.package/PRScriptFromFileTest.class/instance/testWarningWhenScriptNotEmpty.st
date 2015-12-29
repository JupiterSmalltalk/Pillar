tests
testWarningWhenScriptNotEmpty
	| input  |
	input := PRDocument new
		add: ((PRScript content: 'foo') fromFile: 'code.st' yourself);
		yourself.
	self should: [ self transform: input ] raise: PRWarning