descriptions
descriptionLevel2
	<magritteDescription>
	^ PRMagritteHeaderLevelDescription new
		accessor: #level2;
		priority: 101;
		label: 'Header level 2 configuration';
		cocoonDocumentation:
				'A dictionnary which can contains the associations: "numbering": aBoolean (to know if I need numerate level 2 titles), "size": aNumber (the number of numerator we want, if 0 we''ll not render the numerator) and "renderAs": "number"/"roman"/"letter"/"upperLetter" (to know if i need to render this title as a number, a roman number or a letter.)';
		cocoonDefaultDocumentation:
				'A PRNumberingLevelConfiguration which say Pillar need to numbering level 2 titles and to render them with a number.';
		default:
				((PRLevelNumberConfiguration with: (Dictionary with: 'numbering' -> true with: 'size' -> 2))
						level: 2;
						configuration: self;
						yourself);
		classes: PRNumberingLevelConfiguration allSubclasses;
		level: 2;
		yourself