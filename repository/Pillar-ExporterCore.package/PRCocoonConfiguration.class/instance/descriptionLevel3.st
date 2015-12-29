descriptions
descriptionLevel3
	<magritteDescription>
	^ PRMagritteHeaderLevelDescription new
		accessor: #level3;
		priority: 102;
		label: 'Header level 3 configuration';
		cocoonDocumentation:
				'A dictionnary which can contains the associations: "numbering": aBoolean (to know if I need numerate level 3 titles), "size": aNumber (the number of numerator we want, if 0 we''ll not render the numerator) and "renderAs": "number"/"roman"/"letter"/"upperLetter" (to know if i need to render this title as a number, a roman number or a letter.)';
		cocoonDefaultDocumentation:
				'A PRNumberingLevelConfiguration which say Pillar need to numbering level 3 titles and to render them with an upper letter.';
		default:
				((PRLevelUpperLetterConfiguration with: (Dictionary with: 'numbering' -> true with: 'size' -> 3))
						level: 3;
						configuration: self;
						yourself);
		classes: PRNumberingLevelConfiguration allSubclasses;
		level: 3;
		yourself