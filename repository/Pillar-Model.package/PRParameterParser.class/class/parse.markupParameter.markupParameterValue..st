parses
parse: aString markupParameter: parameterMarkup markupParameterValue: parameterValueMarkup
	| index string result parameter |
	index := 1.
	string := aString.
	result := GRSmallDictionary new.
	self flag: #mayNeedToChange. "For now we use GRSmallDictionary because OrderedDictionary is not support by Pharo3. When Pharo4 will become the last use version we will have to think about what is better between OrderedDictionary and GRSmallDictionary."
	[ string isEmpty ]
		whileFalse: [ 
			index := PRMatcherManager findFirst: parameterMarkup at: 1 in: string.
			index := index < 1
				ifTrue: [ string size ]
				ifFalse: [ index - parameterMarkup size ].
			parameter := string first: index.
			string := string allButFirst: (string size min: index + parameterMarkup size).
			parameter isEmpty
				ifFalse: [ 
					index := PRMatcherManager findFirst: parameterValueMarkup at: 1 in: parameter.
					index isZero
						ifTrue: [ result at: (PRTextParser unescape: parameter) put: nil ]
						ifFalse: [ 
							result
								at: (PRTextParser unescape: (parameter copyFrom: 1 to: index - 1))
								put: (PRTextParser unescape: (parameter copyFrom: index + parameterValueMarkup size to: parameter size)) ] ] ].
	^ result