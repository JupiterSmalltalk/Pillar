running
createFile2
  | stream |
  stream := (directory / 'bar.pillar') writeStream.
  stream
    nextPutAll:
      '${inputFile:foo.pillar}$' , GRPlatform current newline , '!!Bye World'.
  stream close