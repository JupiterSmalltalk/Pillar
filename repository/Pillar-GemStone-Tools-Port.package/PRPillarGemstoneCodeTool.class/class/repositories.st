code port
repositories
	"PRPillarGemstoneCodeTool repositories"

	^ self packages collect: [ :pkg | pkg workingCopy repositoryGroup repositories last ] as: Set