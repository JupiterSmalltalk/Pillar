code port
traitsToFlatten
	^ (#(PRTParametrizable PRTSliderWriterTest PRTPipe)
		collect: [ :traitClassName | Smalltalk at: traitClassName ifAbsent: [ nil ] ] )
		select: [ :each | each notNil ]