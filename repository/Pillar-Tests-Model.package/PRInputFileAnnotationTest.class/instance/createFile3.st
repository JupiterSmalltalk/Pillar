running
createFile3
  | stream |
  stream := (directory / 'timoleon.pillar') writeStream.
  stream nextPutAll: '!!Hello World' , OSPlatform current lineEnding , 'test'.
  stream close