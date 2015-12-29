writing text
nextPut: aCharacter
	| string |
	string := MarkdownCharacters at: aCharacter ifAbsent: nil.
	string isNil
		ifTrue: [ super nextPut: aCharacter ]
		ifFalse: [ self raw: string ]