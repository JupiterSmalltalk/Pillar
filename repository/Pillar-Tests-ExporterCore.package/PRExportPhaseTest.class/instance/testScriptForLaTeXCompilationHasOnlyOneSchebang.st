tests
testScriptForLaTeXCompilationHasOnlyOneSchebang
	| configuration phase script |
	self flag: #todo.	"This test should better be part of the Pillar-Tests-ExporterLaTeX. But this will wait for the transformer/phase concept merge."
	configuration := self fromString: '{ #outputType: #latex }'.
	script := configuration baseDirectory / 'pillarPostExport.sh'.
	script ensureDelete.
	phase := self actualClass new configuration: configuration.
	self deny: script exists.
	phase transformerLaTeXCompilationOf: {}.	"We call the phase twice but the shebang must be printed once only"
	phase transformerLaTeXCompilationOf: {}.
	self assert: script exists.
	script
		readStreamDo: [ :stream | 
			self assert: stream nextLine equals: '#!/usr/bin/env bash'.
			[ stream atEnd ] whileFalse: [ self deny: stream nextLine = '#!/usr/bin/env bash' ] ].
	script ensureDelete