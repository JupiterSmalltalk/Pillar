actions
transform: aCollection with: transformer
	^ (self configuration disableTransformers includes: transformer arguments second)
		ifFalse: [ transformer method valueWithReceiver: self arguments: (Array with: aCollection) ]