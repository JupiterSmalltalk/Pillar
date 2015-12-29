action
generateDocumentationOf: pragmas
	pragmas
		do: [ :pragma | 
			stream
				nextPutAll: '- ';
				nextPutAll: pragma arguments second;
				nextPutAll: ' : ';
				nextPutAll: pragma arguments third;
				nextPutAll: Smalltalk os lineEnding ]