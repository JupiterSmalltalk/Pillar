tests
testTransformerCanBeDisable
  | configuration input output expected |
  input := 'Foo'.
  output := WriteStream on: String new.
  configuration := PRPillarConfiguration new
    inputString: input;
    outputStream: output;
    outputType: PRMockWriter;
    disabledPhases: (Array with: 'mock');
    export.
  expected := self jsonStreamWithContent: 'Foo'.
  self
    assert: (NeoJSONReader on: output contents readStream)
    equals: (NeoJSONReader on: expected contents readStream)