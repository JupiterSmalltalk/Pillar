private
writeAll: documents using: aWriter
	| cpt nextDocument output |
	"This nextDocument variable is used to link documents from one another. Because of this, templates can show a 'next' link to go to the following document in the sequence."
	nextDocument := nil.
	cpt := self configuration inputFiles size.
	output := Array ofSize: cpt.
	documents
		reverseDo:
			[ :document | 
			| file outputFile |
			file := self configuration inputFiles at: cpt.
			document next ifNil: [ document next: nextDocument ].
			nextDocument := document.
			outputFile := (file relativeTo: self configuration baseDirectory) withExtension: aWriter fileExtension.
			self configuration outputFile: outputFile.
			[ output at: cpt put: (self write: document using: aWriter) ]
				on: PRExportError
				do: [ :err | 
					err
						inputFile: file;
						signal ].
			cpt := cpt - 1 ].
	^ output