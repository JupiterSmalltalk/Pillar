private
pushSlideIfNeeded
	self aSlideIsOpen
		ifTrue: [ 
			newChildren add: tmpSlide.
			tmpSlide := nil ]