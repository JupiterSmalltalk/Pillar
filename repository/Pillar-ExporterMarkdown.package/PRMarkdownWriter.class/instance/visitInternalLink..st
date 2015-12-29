visiting-document
visitInternalLink: anInternalLink
	| ref |
	ref := String new.
	self configuration separateOutputFiles
		ifTrue: [ 
			anInternalLink hasReference
				ifTrue: [ ref := ref , anInternalLink referenceAsMarkdown ] ]
		ifFalse: [ 
			(anInternalLink hasReference and: [ anInternalLink hasAnchor not ])
				ifTrue: [ 
					PRLinkWarning
						signal:
							'Your inter-file link will not be render because you export without separate output files. If you want your link to be render add an anchor to the beginning of your file.' ] ].
	anInternalLink hasAnchor
		ifTrue: [ ref := ref , '#' , anInternalLink anchor ].
	canvas link
		name: [ anInternalLink children ifEmpty: [ self writeCounter: anInternalLink counter ] ifNotEmpty: [ :e | self visitAll: e ] ]
		to: ref