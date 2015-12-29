as yet unclassified
copyPackages
	"Update the local filetree with the ConfigurationOfPillar version"
	self
		moveVersion: '2.0.4'
		toFiletree: (MCFileTreeRepository new directory: '/opt/git/JupiterSmalltalk/Pillar/repository/' asFileReference)