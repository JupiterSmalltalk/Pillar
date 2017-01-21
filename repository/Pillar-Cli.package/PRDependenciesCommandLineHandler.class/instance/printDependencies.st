private
printDependencies
	| path pathWithoutFile |
	path := self arguments last substrings: '/'.
	pathWithoutFile := path allButLast
		inject: ''
		into: [ :substring :next | substring , next , '/' ].
	self depend
		do: [ :each | 
			self stdout
				<< './';
				<< pathWithoutFile;
				<< each;
				<< ' ' ].
	self stdout flush