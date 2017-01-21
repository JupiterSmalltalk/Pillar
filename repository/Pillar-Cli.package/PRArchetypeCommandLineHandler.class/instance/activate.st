activation
activate
	| archetype tmp |
	super activate.
	tmp := (self baseDirectory / 'tmp') asFileReference.
	tmp ensureCreateDirectory.
	archetype := self parseArchetype.
	self download: archetype.
	(self baseDirectory / (archetype , '.zip')) asFileReference ensureDelete.
	tmp ensureDeleteAll.
	self exitSuccess