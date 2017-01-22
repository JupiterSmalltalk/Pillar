helpers
middleCode
  | code |
  code := String new writeStream.
  code
    nextPutAll: '|test|';
    nextPutAll: GRPlatform current newline;
    nextPutAll: 'test := 1.';
    nextPutAll: GRPlatform current newline;
    nextPutAll: 'test := 1+1'.
  ^ code contents