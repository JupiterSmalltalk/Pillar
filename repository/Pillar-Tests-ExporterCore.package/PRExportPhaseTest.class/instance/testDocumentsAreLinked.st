tests
testDocumentsAreLinked
	| inputFiles outputFile1 outputFile2 |
	inputFiles := OrderedCollection new.
	inputFiles
		add:
			((baseDirectory / 'file1.pillar')
				writeStreamDo: [ :st | st nextPutAll: '{ "title" : "1st file"}' ];
				yourself).
	inputFiles
		add:
			((baseDirectory / 'file2.pillar')
				writeStreamDo: [ :st | st nextPutAll: '{ "title" : "2nd file" }' ];
				yourself).
	PRCocoonConfiguration new
		baseDirectory: baseDirectory;
		templateStream: '{{#next}}Next: {{{title}}}{{/next}}';
		outputType: PRMockWriter;
		inputFiles: inputFiles;
		separateOutputFiles: true;
		export.
	outputFile1 := baseDirectory / 'file1.mock'.
	self assert: outputFile1 exists. 
	self assert: outputFile1 contents equals: 'Next: 2nd file'. 
	outputFile2 := baseDirectory / 'file2.mock'.
	self assert: outputFile2 exists.
	self assert: outputFile2 contents equals: ''