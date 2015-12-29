tests
testTemplateContentsIsUsed
	| configuration output bindings |
	bindings := PRCocoonConfiguration new
		propertyAt: 'lapin' put: 'chapeau';
		yourself.
	FileSystem workingDirectory / 'foobar' writeStreamDo: [ :s | s << 'foobar' ].
	configuration := self fromString: '{ #template: "foobar"}'.
	configuration baseDirectory: FileSystem workingDirectory.
	bindings parent: configuration.
	output := self actualClass new expandTemplateWithBindings: bindings.
	self assert: output equals: 'foobar'.
	FileSystem workingDirectory / 'lapin' writeStreamDo: [ :s | s << '{{{lapin}}}' ].
	configuration := self fromString: '{ #template: "lapin"}'.
	configuration
		baseDirectory: FileSystem workingDirectory;
		yourself.
	bindings parent: configuration.
	output := self actualClass new expandTemplateWithBindings: bindings.
	self assert: output equals: 'chapeau'.
	(FileSystem workingDirectory / 'foobar') ensureDelete.
	(FileSystem workingDirectory / 'lapin') ensureDelete