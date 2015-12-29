visiting-document
visitFigure: aFigure
	canvas picture
		name: [ self writeRawDuring: [ self visitString: (aFigure label ifNil: [ '' ]) ] ]
		reference: aFigure reference
		caption: aFigure text
		width: (aFigure parameters at: 'width' ifAbsent: '')