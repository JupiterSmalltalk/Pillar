visiting-document
visitScript: aScript
	aScript hasLabel
		ifTrue: [
			canvas 
				newLine;
				newLine.
			canvas anchor 
					name: aScript label].
			aScript hasCaption
				ifTrue: [ 
					canvas environment
						name: '**'
						with: [ self visit: aScript caption] ].
			
	canvas environment
			name: '```'
			options: (self languageForScript: aScript) printString asLowercase
			wrapped: [ :nestedStream | 
				self writeRawDuring: [
				nestedStream << aScript text trimBoth ] ].