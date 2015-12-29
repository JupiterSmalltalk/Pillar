private
write: aDocument using: aWriter
	| output cocoonConfiguration |
	cocoonConfiguration := self extractDataFrom: aDocument using: aWriter.
	output := self expandTemplateWithBindings: cocoonConfiguration.
	^ self outputStreamDuring: [ :outStream | self writeOutput: output toStream: outStream ]