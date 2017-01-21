private
argumentsForConfigurationExtension
	| arguments |
	arguments := Dictionary new.
	self arguments
		do: [ :arg | 
			(arg beginsWith: '--')
				ifTrue: [ self add: arg to: arguments ] ].
	self class argumentsOutOfConfiguration do: [ :each | arguments removeKey: each ifAbsent: [  ] ].
	^ arguments