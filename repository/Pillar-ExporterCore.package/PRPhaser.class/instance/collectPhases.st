initialization
collectPhases
	PRPhase
		allSubclassesDo: [ :phase | 
			phase isAbstract
				ifFalse: [ phases add: phase ] ].
	phases sort: [ :p1 :p2 | p1 priority < p2 priority ]