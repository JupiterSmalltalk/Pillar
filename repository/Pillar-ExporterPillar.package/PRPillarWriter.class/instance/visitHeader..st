visiting-document
visitHeader: aHeader
	| level |
	level := self configuration headingLevelOffset + aHeader level.
	level timesRepeat: [ canvas raw: (self markupFor: aHeader) ].
	super visitHeader: aHeader.
	canvas newLine