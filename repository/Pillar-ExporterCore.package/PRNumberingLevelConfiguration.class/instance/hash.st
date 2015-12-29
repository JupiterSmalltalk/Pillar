comparing
hash
	^ self species hash bitXor: (predecessor hash bitXor: numbering hash)