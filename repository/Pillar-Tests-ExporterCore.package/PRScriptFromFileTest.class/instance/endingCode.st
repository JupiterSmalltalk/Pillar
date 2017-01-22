helpers
endingCode
  | code |
  code := String new writeStream.
  code nextPutAll: OSPlatform current lineEnding.
  code nextPut: Character tab.
  ^ code contents