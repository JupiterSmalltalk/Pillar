action
generateDocumentationOf: transformers
  transformers
    do: [ :transformer | 
      stream
        nextPutAll: ';==';
        nextPutAll: transformer key;
        nextPutAll: '==';
        nextPutAll: GRPlatform current newline;
        nextPutAll: ':';
        nextPutAll: transformer comment;
        nextPutAll: GRPlatform current newline ]