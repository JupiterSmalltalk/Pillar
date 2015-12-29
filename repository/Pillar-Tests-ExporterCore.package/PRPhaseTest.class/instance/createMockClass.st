running
createMockClass
	"I create a Mock Phase that just do nothing on the input."

	PRPhase
		subclass: #PRMockPhase
		instanceVariableNames: ''
		classVariableNames: ''
		category: 'Pillar-Tests-ExporterCore'.
	(Smalltalk globals at: #PRMockPhase) class
		compile:
			'priority
	^ 90'.
	(Smalltalk globals at: #PRMockPhase)
		compile:
			'actionOn: anInput
	anInput first add: (PRText content: ''Bar''). 
	^ anInput'.
	(Smalltalk globals at: #PRMockPhase)
		compile:
			'transformerMock: aCollection
			<pillarTransformer: 100 key: ''mock'' documentation:''mock transformer''>
	aCollection first add: (PRText content: ''Timoleon'').
	^ aCollection'