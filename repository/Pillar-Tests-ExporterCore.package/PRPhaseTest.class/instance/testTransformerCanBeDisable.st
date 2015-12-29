as yet unclassified
testTransformerCanBeDisable
	| configuration input output |
	input := 'Foo'.
	output := WriteStream on: String new.
	configuration := PRCocoonConfiguration new
		inputString: input;
		outputStream: output;
		outputType: PRMockWriter;
		disableTransformers: (Array with: 'mock');
		export.
	self assert: output contents equals: 'FooBar'