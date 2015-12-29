script generation
scriptBeginingOn: aWriteStream
	aWriteStream
		nextPutAll: 'echo ==========================================================';
		lf;
		nextPutAll: 'echo Begining of the LaTeX compilation...';
		lf;
		nextPutAll: 'echo ==========================================================';
		lf;
		nextPutAll: 'cd ';
		nextPutAll: ((self configuration outputDirectory relativeTo: self configuration baseDirectory) printWithDelimiter: $/);
		lf