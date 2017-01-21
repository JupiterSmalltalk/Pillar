private
createNewColumnWith: aColumnAnnotation
	self columnsIsInCreation
		ifFalse: [ 
			PRError
				signal:
					'You can''t create a new column if you are not inside a column environment. Please use ${columns}$ before the beginning of a column.' ].
	tmpColumns add: (PRColumn width: (aColumnAnnotation columnAnnotation parameters at: 'width'))