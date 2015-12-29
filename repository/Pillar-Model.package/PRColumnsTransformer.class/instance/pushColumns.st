private
pushColumns
	self columnsIsInCreation
		ifTrue: [ 
			newChildren add: tmpColumns.
			tmpColumns := nil ]
		ifFalse: [ PRError signal: 'Column environement ending encounter out of a column environment.' ]