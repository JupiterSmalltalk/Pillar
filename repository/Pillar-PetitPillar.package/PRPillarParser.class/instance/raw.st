grammar - Raw
raw
	^ super raw
		==>
			[ :array | 
			| type contentRaw |
			contentRaw := String new writeStream.
			contentRaw nextPutAll: array third.
			PRRaw content: contentRaw contents type: array second ]