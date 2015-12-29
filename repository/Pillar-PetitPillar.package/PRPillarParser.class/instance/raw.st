grammar - Raw
raw
	^ super raw
		==>
			[ :array | 
			| type contentRaw |
			contentRaw := '' writeStream.
			type := PRRaw rawTypeFrom: array second storeInvalidIn: contentRaw.
			contentRaw nextPutAll: array third.
			PRRaw content: contentRaw contents type: type ]