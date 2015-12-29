tests
testParseWithoutFirstKey
	| input expected |
	input := '${mock:Foo}$'.
	expected := PRMockAnnotation new.
	expected hadAllKeys: false.
	expected parameters at: 'value' put: 'Foo'.
	self assert: ((PRDocument parser newStartingAt: #annotation) parse: input) equals: expected