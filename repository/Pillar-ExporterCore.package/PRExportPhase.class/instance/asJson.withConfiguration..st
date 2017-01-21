private
asJson: anOutput withConfiguration: aConfig
	| output config |
	
	output := '' writeStream.
	config := aConfig metadata properties jsonWriteOn: output.
	^ output contents.