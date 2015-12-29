parsing
parseFile: aFile
	^ aFile
		readStreamDo: [ :input | 
			[ PRDocument parser parse: input ]
				on: PRError
				do: [ :exception | PRError signal: exception messageText , ' Inside: ' , aFile basename ] ]