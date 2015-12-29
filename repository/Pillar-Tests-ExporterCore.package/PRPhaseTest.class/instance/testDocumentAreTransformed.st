as yet unclassified
testDocumentAreTransformed
	| configuration input output |
	input := 'Foo'.
	output := WriteStream on: String new.
	configuration := PRCocoonConfiguration new
		inputString: input;
		outputStream: output;
		outputType: PRMockWriter;
		export.
	self assert: output contents equals: 'FooBarTimoleon'