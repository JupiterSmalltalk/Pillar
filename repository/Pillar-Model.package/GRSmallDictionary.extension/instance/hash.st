*Pillar-Model-Core
hash
	^ self species hash
		bitXor:
			(self size hash bitXor: (self keys hash bitXor: self values hash))