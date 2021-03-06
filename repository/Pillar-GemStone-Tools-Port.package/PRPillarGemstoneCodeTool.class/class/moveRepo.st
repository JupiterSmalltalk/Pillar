code port
moveRepo
	"PRPillarGemstoneCodeTool moveRepo"

	| source destination goSource goDestination sortBlock re fileBlocks filesSorted files destinationFiles |
	self
		getConfiguration;
		loadConfiguration.
	source := MCSmalltalkhubRepository allInstances
		detect: [ :each | each location includesSubstring: 'Pier/Pillar' ].

	"Get reference to the target repository"
	destination := MCFileTreeRepository allInstances
		detect: [ :each | each location includesSubstring: 'Pillar/repository' ].

	"Setup Gofer"
	goSource := Gofer new repository: source.
	goDestination := Gofer new repository: destination.

	"The packages obtained from Gofer are in random order... so some sorting has to be done so the git history is nicer."
	sortBlock := [ :x :y | 
	x second = y second
		ifTrue: [ x fourth asNumber <= y fourth asNumber ]
		ifFalse: [ x second < y second ] ].

	"My-Package-Author.Number"
	re := '^(.+)-([^-]+)\.(\d+)$' asRegex.
	fileBlocks := (ConfigurationOfPillar project stableVersion packages collect: [ :pkg | pkg file ])
		collect: [ :each | 
			re search: each.
			{(re subexpression: 1).	"first - full string"
			(re subexpression: 2).	"second - package name"
			(re subexpression: 3).	"third - author name"
			(re subexpression: 4)	"fourth - commit name"} ].
	filesSorted := fileBlocks asSortedCollection: sortBlock.
	files := (filesSorted collect: [ :x | x first ]) asArray.
	(goSource allResolved select: [ :resolved | files anySatisfy: [ :each | resolved name = each ] ])
		do: [ :each | goSource package: each packageName ].
	"goSource fetch."	"downloads all mcz on your computer"
	destinationFiles := destination allVersionNames.	"checks what files are already at destination"
	files
		reject: [ :file | destinationFiles includes: file ]
		thenDo: [ :file | goDestination version: file ].	"selects only the mcz that are not yet at destination"
	goDestination push	"sends everything to new repository"