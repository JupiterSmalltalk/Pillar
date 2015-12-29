parsing
parseInput: aCollectionOfFiles
	| documents stdin |
	stdin := FileStream stdin.
	documents := OrderedCollection new.
	aCollectionOfFiles isEmpty
		ifTrue: [ ^ self parse: stdin on: documents ]
		ifFalse: [ 
			documents add: (self parseFile: aCollectionOfFiles first).
			aCollectionOfFiles allButFirst do: [ :file | self addFile: file to: documents ] ].
	^ documents