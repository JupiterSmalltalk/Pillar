helpers
middleCode
  | code |
  code := String new writeStream.
  code
    nextPutAll: '|test|';
    nextPutAll: OSPlatform current lineEnding;
    nextPutAll: 'test := 1.';
    nextPutAll: OSPlatform current lineEnding;
    nextPutAll: 'test := 1+1'.
  ^ code contents