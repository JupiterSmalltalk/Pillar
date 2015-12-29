code port
packages
	"PRPillarGemstoneCodeTool packages"

	^ ((Gofer new allResolved collect: [ :each | each packageName ] as: Set) select: [ :e | e beginsWith: 'Pillar' ])
		collect: [ :packageName | MCPackage named: packageName ]