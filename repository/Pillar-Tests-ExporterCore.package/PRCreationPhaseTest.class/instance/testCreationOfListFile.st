tests
testCreationOfListFile
	| directory files configuration |
	directory := FileSystem memory root.
	files := Array with: directory / 'foo.pillar' with: directory / 'bar.pillar'.
	configuration := PRCocoonConfiguration new
		baseDirectory: directory;
		inputFiles: files;
		yourself.
	self assert: (self actualClass executeOn: nil with: configuration) equals: files