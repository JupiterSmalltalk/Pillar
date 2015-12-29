accessing
defaultConfiguration
	| defaultConfiguration |
	defaultConfiguration := PRCocoonConfiguration new.
	defaultConfiguration properties at: 'outputType' put: self.
	defaultConfiguration properties at: 'template' put: (PRTemplate for: self defaultTemplate).
	defaultConfiguration properties at: 'configurations' put: Dictionary new.	"we specify an empty collection of sub configurations to avoid infinite recursion : a default configuration would otherwise contain a collection of default configurations, each containing a collection of default configurations..."
	^ defaultConfiguration