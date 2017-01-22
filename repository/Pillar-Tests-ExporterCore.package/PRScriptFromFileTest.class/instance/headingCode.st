helpers
headingCode
  | code |
  code := String new writeStream.
  self firstLine timesRepeat: [ code nextPutAll: GRPlatform current newline ].
  ^ code contents