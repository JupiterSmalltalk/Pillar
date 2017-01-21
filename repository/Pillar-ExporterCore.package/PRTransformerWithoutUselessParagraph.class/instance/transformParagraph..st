as yet unclassified
transformParagraph: paragraph
	^ (paragraph children size = 1 or: (paragraph children size = 2 and: paragraph children last class = PRLineBreak))
		ifTrue: [ self transformParagraphWith1Child: paragraph ]
		ifFalse: [ self transformParagraphWithChildren: paragraph ]