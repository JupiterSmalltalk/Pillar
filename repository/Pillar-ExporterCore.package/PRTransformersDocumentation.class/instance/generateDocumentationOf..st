action
generateDocumentationOf: transformers
  transformers
    do: [ :transformer | 
      stream
        nextPutAll: ';==';
        nextPutAll: transformer key;
        nextPutAll: '==';
        nextPutAll: OSPlatform current lineEnding;
        nextPutAll: ':';
        nextPutAll: transformer comment;
        nextPutAll: OSPlatform current lineEnding ]