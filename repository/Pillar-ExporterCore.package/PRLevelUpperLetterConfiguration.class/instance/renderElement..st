rendering-element
renderElement: aNumber
	| result alphabet letter |
	aNumber = 0
		ifTrue: [ ^ 'NaN' ].
	alphabet := Character alphabet.
	letter := aNumber \\ alphabet size.
	letter = 0
		ifTrue: [ letter := alphabet size ].
	result := (alphabet at: letter) asUppercase.
	result := result asString.
	((aNumber - 1) / alphabet size) asFloat floor timesRepeat: [ result := result , '''' ].
	^ result