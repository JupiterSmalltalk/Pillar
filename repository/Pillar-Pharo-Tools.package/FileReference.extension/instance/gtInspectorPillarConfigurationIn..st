*Pillar-Pharo-Tools
gtInspectorPillarConfigurationIn: composite
	<gtInspectorPresentationOrder: 40>
	| pillarConfiguration |
	(self basename = 'pillar.conf')
		ifFalse: [ ^ self ].
	pillarConfiguration := PRPillarConfiguration new baseDirectory: self parent; importFromFile: self.
	(pillarConfiguration
			gtInspectorInputFilesIn: composite)
			title: 'Pillar'