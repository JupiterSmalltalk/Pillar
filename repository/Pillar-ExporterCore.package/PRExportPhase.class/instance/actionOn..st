actions
actionOn: anInput
	| writer output |
	"We create the directories before the files to avoir a FileDoesNotExistException."
	writer := self instantiateWriter
		configuration: self configuration;
		yourself.
	output := self configuration separateOutputFiles
		ifTrue: [ self writeAll: anInput using: writer ]
		ifFalse:
			[ 
			self configuration outputFile isStream
				ifFalse: [ self configuration outputFile: (self configuration outputFile withExtension: writer fileExtension) ].
			 { self write: anInput first using: writer } ].
	"If the base directory is the same as the output directory we do not copy the support files because they will be the same."
	self configuration outputDirectory ~= self configuration baseDirectory
		ifTrue: [ self copySupportFile ].
	^ output