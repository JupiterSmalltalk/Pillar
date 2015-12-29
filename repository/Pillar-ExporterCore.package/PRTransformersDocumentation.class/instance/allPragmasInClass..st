accessing
allPragmasInClass: aClass
	"I return the list of the pragmas 'pillarTransformer:key:documentation:' of a class of configuration."

	^ Pragma allNamed: #pillarTransformer:key:documentation: in: aClass