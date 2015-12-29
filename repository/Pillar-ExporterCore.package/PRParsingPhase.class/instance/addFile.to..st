parsing
addFile: file to: documents
	configuration separateOutputFiles
		ifTrue: [ documents add: (self parseFile: file) ]
		ifFalse: [ documents first addAll: (self parseFile: file) children ]