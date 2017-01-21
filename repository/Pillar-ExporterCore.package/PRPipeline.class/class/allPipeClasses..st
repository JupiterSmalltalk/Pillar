building
allPipeClasses: aConfiguration
	^ self allConcretePipeClasses
		select:
			[ :each | each pipelineKey = self key and: [ each isEnabled: aConfiguration ] ]