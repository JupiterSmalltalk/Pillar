helpers
endingCode
  | code |
  code := String new writeStream.
  code nextPutAll: GRPlatform current newline.
  code nextPut: Character tab.
  ^ code contents