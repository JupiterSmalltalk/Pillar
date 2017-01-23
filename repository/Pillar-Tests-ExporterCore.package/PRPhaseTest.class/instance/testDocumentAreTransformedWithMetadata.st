tests
testDocumentAreTransformedWithMetadata
  | configuration input output expected ston expectedJson outputJson |
  input := 'Foo'.
  output := '' writeStream.
  ston := '{
		"outputType":#mock,
		"metadata": { 
			"title":"Test"
		 }
	}'.
  configuration := PRPillarConfiguration newFromString: ston.
  configuration
    outputStream: output;
    inputString: input;
    yourself;
    export.
  expected := self jsonStreamWithContent: 'FooBarTimoleon' withTitle: 'Test'.
  expectedJson := NeoJSONReader on: expected contents readStream.
  outputJson := NeoJSONReader on: output contents readStream.
  self assert: outputJson equals: expectedJson