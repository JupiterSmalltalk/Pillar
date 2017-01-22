tests
testStructureName
  | ston nLine script |
  nLine := GRPlatform current newline.
  ston := '[[[structure=Test' , nLine , 'Foo' , nLine , ']]]'.
  script := (self parser parse: ston) children first.
  self assert: script structureName equals: 'Test'