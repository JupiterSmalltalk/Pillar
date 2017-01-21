visiting-document
visitInputFileAnnotation: anInputFileAnnotation
	"I load the file and if the file exist I replace the node of the annotation by the content of the file."

	| file pipeline |
	file := anInputFileAnnotation fileWithConfiguration: self configuration.
	file exists
		ifTrue: [ | parsedFile stream |
			stream := FileStream readOnlyFileNamed: file.
			pipeline := self buildFileInclusionPipeline: self configuration.
			parsedFile := PRUpdateFileInclusionReference
				start:
					(pipeline
						executeOn:
							(PRCompilationContext new
								input: file;
								configuration: self configuration)) input
				with: (self pathForFile: file parent fullName).
			self replace: parsedFile children ]
		ifFalse: [ anInputFileAnnotation errorFileNotFound: file ]