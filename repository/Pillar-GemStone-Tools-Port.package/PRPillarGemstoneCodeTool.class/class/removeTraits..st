code port
removeTraits: traits
	traits do: [ :trait | 
		Transcript crShow: 'Removing trait ' , trait asString.
		trait removeFromSystem ]