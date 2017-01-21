as yet unclassified
unzip: aString
	| archetype |
	ZipArchive new
		readFrom: self baseDirectory asFileReference / aString, 'zip';
		extractAllTo: (self baseDirectory / 'tmp') asFileReference.
	archetype := (self baseDirectory asFileReference / 'tmp' / aString).
	archetype isDirectory ifTrue: [ archetype copyAllTo: self baseDirectory ]
	