helpers
headingCode
  | code |
  code := String new writeStream.
  self firstLine timesRepeat: [ code nextPutAll: OSPlatform current lineEnding ].
  ^ code contents