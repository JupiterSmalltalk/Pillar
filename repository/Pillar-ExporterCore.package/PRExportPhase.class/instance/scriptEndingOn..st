script generation
scriptEndingOn: aWriteStream
	^ aWriteStream
		nextPutAll: 'cd ';
		nextPutAll: ((self configuration baseDirectory relativeTo: self configuration outputDirectory) printWithDelimiter: $/);
		lf