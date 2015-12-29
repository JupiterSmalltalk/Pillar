tests
testCreateScriptForLaTeXCompilation
	| configuration phase script |
	self flag: #todo.	"This test should better be part of the Pillar-Tests-ExporterLaTeX. But this will wait for the transformer/phase concept merge."
	configuration := self fromString: '{ #outputType: #latex }'.
	script := configuration baseDirectory / 'pillarPostExport.sh'.
	script ensureDelete.
	phase := self actualClass new configuration: configuration.
	self deny: script exists.
	phase transformerLaTeXCompilationOf: {}.
	self assert: script exists.
	script ensureDelete