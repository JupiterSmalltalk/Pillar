running
createFile3
  | stream |
  stream := (directory / 'timoleon.pillar') writeStream.
  stream nextPutAll: '!!Hello World' , GRPlatform current newline , 'test'.
  stream close