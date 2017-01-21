visiting-document
buildFileInclusionPipeline: aConfiguration
	| parse check transform fileInclusion |
	parse := PRParsingPhase buildPipe: aConfiguration.
	check := PRCheckPipeline buildPipe: aConfiguration.
	transform := PRTransformPipeline buildPipe: aConfiguration.
	fileInclusion := PRFileInclusion buildPipe: aConfiguration.
	^ (LPPipeline
		pipes:
			{parse.
			check.
			transform.
			fileInclusion}) sort