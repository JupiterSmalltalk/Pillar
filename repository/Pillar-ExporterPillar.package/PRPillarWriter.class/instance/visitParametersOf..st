visiting-document
visitParametersOf: objectWithParams
	objectWithParams parameters associations
		do: [ :assoc | 
			canvas nextPutAll: assoc key.
			assoc value ifNotNil: [ :value |
					canvas
						raw: PRPillarParser defaultMarkupParameterValue;
						nextPutAll: value greaseString ] ]
		separatedBy: [ canvas raw: PRPillarParser defaultMarkupParameter ]