private
depend
	| cache inputFile |
	cache := Set new.
	inputFile := self baseDirectory resolve: self arguments last.
	cache
		addAll: (self visitorDependencies start: (PRDocument parser parse: inputFile contents)).
	^ cache