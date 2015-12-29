*Pillar-Model-Core
= aDictionary
	"Two dictionaries are equal if
	 (a) they are the same 'kind' of thing.
	 (b) they have the same set of keys.
	 (c) they have the same set of values."

	^ self species = aDictionary species
		and: [ self size = aDictionary size and: [ self keys = aDictionary keys and: [ self values = aDictionary values ] ] ]