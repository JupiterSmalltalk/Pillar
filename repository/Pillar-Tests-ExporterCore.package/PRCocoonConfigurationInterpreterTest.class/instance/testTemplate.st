tests
testTemplate
	| configuration |
	self assert: (self fromString: '{}') template equals: PRTemplate new.
	self should: [ (self fromString: '{#template: "Something.txt"}') templateContents ] raise: PRTemplateError.
	FileSystem workingDirectory / 'Something.txt' writeStreamDo: [ :s | s nextPutAll: 'a content' ].
	configuration := (self fromString: '{ #template: "Something.txt"}') yourself.
	self assert: configuration templateContents asString equals: 'a content'.
	(FileSystem workingDirectory / 'Something.txt')  ensureDelete