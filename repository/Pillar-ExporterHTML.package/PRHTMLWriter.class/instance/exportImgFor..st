private
exportImgFor: aFigure
	| img |
	img := canvas emptyTag
		name: 'img';
		parameterAt: 'src' put: (self referenceOfExternalLink: aFigure);
		yourself.
	aFigure parameters
		at: 'width'
		ifPresent:
			[ :width | img parameterAt: 'width' put: width greaseString , '%' ].
	img closeTag