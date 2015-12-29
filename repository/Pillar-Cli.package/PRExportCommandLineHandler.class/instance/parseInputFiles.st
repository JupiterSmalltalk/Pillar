activation
parseInputFiles
	| inputFile |
	self arguments ifEmpty: [ ^ self ].
	(self arguments last beginsWith: '--')
		ifTrue: [ ^ self ].
	inputFile := self baseDirectory resolve: self arguments last.
	inputFile exists
		ifFalse: [ self exitFailure: '"' , inputFile pathString , '" does not exist' ].
	configuration inputFiles: {inputFile}