*Pillar-Pharo-Tools
gtInspectorPillarProjectIn: composite
	<gtInspectorPresentationOrder: 20>
	| pillarFile pillarConfiguration |
	self isDirectory not ifTrue: [ ^ self ].
	pillarFile := self files 
						detect: [:each | each basename = 'pillar.conf']
						ifNone: [ ^ self ].
	pillarConfiguration := PRPillarConfiguration new baseDirectory: self; importFromFile: pillarFile.
	(pillarConfiguration
			gtInspectorInputFilesIn: composite)
			title: 'Pillar'