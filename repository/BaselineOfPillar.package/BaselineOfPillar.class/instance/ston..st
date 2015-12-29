dependencies
ston: spec
  spec
    for: #'pharo'
    do: [ 
      spec
        project: 'Ston'
        with: [ 
          spec
            className: 'ConfigurationOfSton';
            versionString: #'stable';
            loads: #('Core');
            repository:
                'http://smalltalkhub.com/mc/SvenVanCaekenberghe/STON/main' ] ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        baseline: 'Ston'
        with: [ spec repository: 'github://dalehenrich/ston:gemstone/repository' ] ]