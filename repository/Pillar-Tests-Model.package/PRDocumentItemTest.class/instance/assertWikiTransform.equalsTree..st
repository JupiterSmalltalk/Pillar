utilities
assertWikiTransform: aString equalsTree: aDocument
	"Assert that parsing aString results in aDocument."

	self
		assert:
			(PRFileInclusion new
				configuration:
					(PRPillarConfiguration new
						outputType: PRPillarWriter ;
						disabledPhases: { #sections };
						yourself);
				start: (self parser parse: aString)) = aDocument
		description: aString
		resumable: true