tests
testDocumentPropertiesCanBeReferencedFromTemplates
	| doc data conf output |
	doc := PRDocument new
		propertyAt: 'authors' put: 'Someone';
		yourself.
	conf := PRCocoonConfiguration new
		templateStream: 'Authors: {{{authors}}}';
		yourself.
	output := String
		streamContents: [ :outStream | 
			conf outputFile: outStream.
			data := self actualClass new configuration: conf; write: doc using: PRMockWriter new ].
	self assert: output equals: 'Authors: Someone'