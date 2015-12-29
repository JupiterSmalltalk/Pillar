code port
flattenTraits
	"PRPillarGemstoneCodeTool flattenTraits"

	{PRAbstractAnnotation.
	PRReference.
	PRScript.
	PRMockForParameters }
		do: [ :class | 
			class class flattenDownAllTraits.
			class class recompile.
			class flattenDownAllTraits.
			class recompile ]