*Pillar-ExporterCore
visitTemplateDescription: aTemplateDescription
	self
		tryToAddFrom: aTemplateDescription
		withInterpretation: [ :template | 
			| fileContent |
			[ fileContent := (configuration baseDirectory / template) contents.
			  PRTemplate for: fileContent readStream ]
				on: FileDoesNotExist
				do: [ 
					PRTemplateError
						signal: 'Template error: ' , (configuration baseDirectory / template) pathString , ' not found.' ] ]