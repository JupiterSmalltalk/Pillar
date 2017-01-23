creating
createStructureFrom: aScript
  ^ PRStructure new
    tag: aScript structureName;
    structDict: (NeoJSONReader on: aScript text readStream) asDictionary;
    yourself