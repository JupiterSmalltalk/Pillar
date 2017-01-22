tests
testEqualScriptWithLanguage
  | param1 param2 |
  param1 := GRSmallDictionary new
    at: 'language' put: 'smalltalk';
    yourself.
  param2 := GRSmallDictionary new
    at: 'language' put: 'html';
    yourself.
  self
    deny:
      (self actualClass content: 'foo' parameters: param1)
        = (self actualClass content: 'foo' parameters: param2).
  self
    assert:
      (self actualClass content: 'foo' parameters: param1)
        = (self actualClass content: 'foo' parameters: param1)