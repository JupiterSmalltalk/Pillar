grammar - List
orderedSubListItem
  ^ super orderedSubListItem
    ==> [ :array | 
      | result |
      result := String new writeStream.
      array
        do: [ :elem | 
          elem isString
            ifTrue: [ result nextPutAll: elem ]
            ifFalse: [ result nextPutAll: elem second ] ].
      result contents ]