running
createFile2
  | stream |
  stream := (directory / 'bar.pillar') writeStream.
  stream
    nextPutAll:
      '${inputFile:foo.pillar}$' , OSPlatform current lineEnding , '!!Bye World'.
  stream close