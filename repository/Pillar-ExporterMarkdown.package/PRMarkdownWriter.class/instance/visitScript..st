visiting-document
visitScript: aScript
	needsABreak ifTrue: [ canvas addInvisibleSeparator ].

	aScript hasLabel
		ifTrue: [ 
			canvas
				newLine;
				newLine.
			canvas anchor name: aScript label ].
	aScript hasCaption
		ifTrue: [ canvas environment name: '**' with: [ self visitText: aScript caption] ].
	self
		nest: [ :brush | 
			brush
				name: ''
				with: [ :nestedStream |
					self writeRawDuring: [ nestedStream << aScript text trimBoth ] ] ].
			
	needsABreak := true.