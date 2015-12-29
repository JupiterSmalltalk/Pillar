as yet unclassified
rawTypeFrom: string storeInvalidIn: contentRaw
	^ PRDocumentWriter withAllConcreteClasses
		detect: [ :each | each writerName = string ]
		ifFound: [ :elem | elem writerName ]
		ifNone:
			[ 
			string
				ifNotNil:
					[ :invalideType | 
					contentRaw
						nextPutAll: invalideType;
						nextPutAll: PRDocument parser defaultMarkupRawType.
					nil ]
			"PRParseWarning signal: invalideType , ' is not a valid type for a raw.'.
							invalideType" ]