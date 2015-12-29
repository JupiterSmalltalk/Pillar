actions
transform: aNode
	^ self actualInstance
		configuration:
				(PRCocoonConfiguration new
						baseDirectory: baseDirectory;
						newLine: Smalltalk os lineEnding;
						yourself);
		start: aNode;
		topNode