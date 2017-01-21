as yet unclassified
download: aString
	| path znClient |
	path := 'https://ci.inria.fr/pharo-contribution/job/Pillar-Archetypes/ws/' , aString
		, '/*zip*/' , aString , '.zip'.
	znClient := ZnClient new path: path.
	(znClient downloadTo: self baseDirectory)
		ifTrue: [ self unzip: aString ]