descriptions
descriptionLevel5
	<magritteDescription>
	^ PRMagritteHeaderLevelDescription new
		accessor: #level5;
		priority: 104;
		label: 'Header level 5 configuration';
		cocoonDocumentation:
				'A dictionnary which can contains the associations: "numbering": aBoolean (to know if I need numerate level 5 titles), "size": aNumber (the number of numerator we want, if 0 we''ll not render the numerator) and "renderAs": "number"/"roman"/"letter"/"upperLetter" (to know if i need to render this title as a number, a roman number or a letter.)';
		cocoonDefaultDocumentation:
				'A PRNumberingLevelConfiguration which say Pillar doesn''t need to numbering level 5 titles.';
		default:
				((PRNumberingLevelConfiguration with: (Dictionary with: 'numbering' -> false with: 'size' -> 0))
						level: 5;
						configuration: self;
						yourself);
		classes: PRNumberingLevelConfiguration allSubclasses;
		level: 5;
		yourself