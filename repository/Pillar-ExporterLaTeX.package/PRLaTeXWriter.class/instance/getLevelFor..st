visiting-document
getLevelFor: aHeader
	| level |
	level := self configuration headingLevelOffset + aHeader level.
	^ level