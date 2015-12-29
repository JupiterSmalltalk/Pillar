code port
port
	"PRPillarGemstoneCodeTool port.
	1. Load configuration and latest version from SmalltalkHub, and load Baseline from Github
	1. Flatten and remove Traits.
	2. Check for any changes in each package and write to GitHub"
	Transcript crShow: 'Loading Latest Version from Configuration.'.
	Metacello new
		configuration: 'Pillar';
		repository: 'http://smalltalkhub.com/mc/Pier/Pillar/main/';
		version: #stable;
		load.
	Transcript crShow: 'Loading Baseline from local filetree.'.
	Metacello new
		baseline: 'Pillar';
		repository: 'filetree:///opt/git/JupiterJones/Pillar/repository';
		get.
	Transcript crShow: 'Flattening traits.'.
	self
		flattenTraits;
		removeTraits.
	Transcript crShow: 'Saving packages.'.
	self packages do: [ :package | self halt ]