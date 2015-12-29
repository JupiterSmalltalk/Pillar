private
extractDataFrom: aDocument using: aWriter
	| content subConfiguration |
	content := String
		streamContents: [ :stream | 
			aWriter
				setStream: stream;
				configuration: self configuration;
				start: aDocument ].
	subConfiguration := self configuration class new.
	subConfiguration parent: self configuration.
	CCMagritteDictionaryReader writeDictionary: aDocument properties copy toConfiguration: subConfiguration.
	subConfiguration propertyAt: 'content' put: content.
	subConfiguration propertyAt: 'properties' put: aDocument properties.
	^ subConfiguration