visiting-document
getLevelFor: aHeader
	| level |
	level := self configuration headingLevelOffset + 2 + aHeader level.
	^ level