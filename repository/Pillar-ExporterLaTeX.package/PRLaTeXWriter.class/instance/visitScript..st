visiting-document
visitScript: aScript
	| env |
	aScript language isSyntaxHighlightingPossible
		ifTrue: [ 
			canvas
				raw: '% syntax highlighting = ' , (self languageForScript: aScript) printString;
				newLine ].
	env := (aScript hasCaption or: [ aScript hasLabel ])
		ifTrue: [ 
			canvas environment
				name: 'script';
				optParameter: aScript label;
				parameter: [ self noNewLineDuring: [ self visit: aScript caption ] ];
				yourself ]
		ifFalse: [ 
			canvas environment
				name: 'code';
				parameter: '';
				yourself ].
	env with: [ self writeRawDuring: [ super visitScript: aScript ]. canvas newLine ]