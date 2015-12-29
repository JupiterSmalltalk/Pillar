utilities
assertWikiTransform: aString equalsTree: aDocument
	"Assert that parsing aString results in aDocument."

	self
		assert:
			(PRFileInclusion new
				configuration: PRCocoonConfiguration new;
				start: (self parser parse: aString);
				topNode) = aDocument
		description: aString
		resumable: true