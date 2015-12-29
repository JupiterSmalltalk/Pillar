descriptions
descriptionRenderStructureAsSlide
	<magritteDescription>
	^ MABooleanDescription new
		accessor: #renderStructureAsSlide;
		priority: 100;
		label: 'Render the Structure as Slide for Sliders.';
		cocoonDocumentation:
				'I am a parameter for a slide export (e.g. the Beamer or Deck.js exporter). If I am at true I will create a slide with the title of the different structures of the document. for example if I founed a ''! Intro'' I will create a diapo ''Intro'' before the next slide.';
		default: true;
		yourself