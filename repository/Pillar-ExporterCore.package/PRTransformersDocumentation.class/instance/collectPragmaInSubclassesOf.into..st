initialize
collectPragmaInSubclassesOf: aClass into: pragmas
	aClass allSubclasses
		do: [ :each | 
			each isAbstract
				ifFalse: [ pragmas addAll: (self allPragmasInClass: each) ] ]