tests
testDocumentAreTransformed
  | configuration input output expected |
  input := 'Foo'.
  output := WriteStream on: String new.
  configuration := PRPillarConfiguration new
    inputString: input;
    outputStream: output;
    outputType: PRMockWriter;
    export.
  expected := self jsonStreamWithContent: 'FooBarTimoleon'.
  self
    assert: (NeoJSONReader on: output contents readStream)
    equals: (NeoJSONReader on: expected contents readStream)