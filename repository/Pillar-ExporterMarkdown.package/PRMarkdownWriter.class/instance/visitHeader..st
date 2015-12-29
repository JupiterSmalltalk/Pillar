visiting-document
visitHeader: aHeader
	| section level |
	canvas
		newLine;
		newLine.
	level := self configuration headingLevelOffset + aHeader level.
	level := level min: 7 max: 1.
	section := ''.
	level timesRepeat: [ section := section , '#' ].
	canvas command
		name: section;
		parameter: [ 
			self writeCounterForHeader: aHeader .
			super visitHeader: aHeader ]