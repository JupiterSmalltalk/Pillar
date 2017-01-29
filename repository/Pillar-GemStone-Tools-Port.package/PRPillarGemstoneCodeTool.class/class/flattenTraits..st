code port
flattenTraits: traits
	traits
		do: [ :trait | 
			trait users
				do: [ :class | 
					Transcript crShow: 'Flattening trait ', trait asString.
					class class flattenDownAllTraits.
					class flattenDownAllTraits ] ]