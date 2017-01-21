tests
testCreationOfFile
	| directory file configuration |
	directory := FileSystem memory root.
	file := directory / 'foo.pillar'.
	configuration := PRPillarConfiguration new
		baseDirectory: directory;
		inputFile: file;
		yourself.
	self
		assert:
			(self actualClass
				executeOn: (PRCompilationContext configuration: configuration))
				input
		equals: file