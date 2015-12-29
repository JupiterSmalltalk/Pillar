code port
flattenTraits
	"PRPillarGemstoneCodeTool flattenTraits"

	self traitClasses
		do: [ :class | 
			class class flattenDownAllTraits.
			class flattenDownAllTraits ]