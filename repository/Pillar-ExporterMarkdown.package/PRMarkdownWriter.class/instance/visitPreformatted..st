visiting-document
visitPreformatted: aPreformatted
	
	self nest: [ :brush | 	
		brush
			name: ''
			with: [ :nestedStream || previousStream |
				"We switch the stream here to be able to properly indent the result"
				previousStream := stream stream.
				stream setStream: nestedStream.
				aPreformatted children do: [ :child | self visit: child ] separatedBy: [ canvas newLine ].
				stream setStream: previousStream ] ]