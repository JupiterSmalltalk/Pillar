helpers
createWriterWithSeparateOutputFilesOn: aWriteStream
	^ (self actualClass on: aWriteStream)
		configuration:
				(PRPillarConfiguration new
						separateOutputFiles: true;
						yourself);
		yourself