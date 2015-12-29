code port
packagesAndWorkingCopies
	"PRPillarGemstoneCodeTool packagesAndWorkingCopies"

	^ self packages collect: [ :pkg | pkg -> pkg workingCopy ]