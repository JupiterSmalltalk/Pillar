helpers
createWriterWithSeparateOutputFilesOn: aWriteStream
	^ (self actualClass on: aWriteStream)
		configuration:
				(PRCocoonConfiguration new
						separateOutputFiles: true;
						yourself);
		yourself