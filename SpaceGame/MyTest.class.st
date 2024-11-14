Class {
	#name : 'MyTest',
	#superclass : 'TestCase',
	#category : 'SpaceGame',
	#package : 'SpaceGame'
}

{ #category : 'tests' }
MyTest >> testCruisersVsBattlecruisersInAsteroidFieldAndDeepSpace [ 
    | fleet1 fleet2 region |

    "Créer une flotte de 10 cruisers"
    fleet1 := Fleet new.
    10 timesRepeat: [ fleet1 addShip: (Cruiser new) ].

    "Créer une flotte de 3 battlecruisers"
    fleet2 := Fleet new.
    3 timesRepeat: [ fleet2 addShip: (Battlecruiser new) ].

    "Assigner les flottes aux régions appropriées"
    region := AsteroidField new.

    "Les battlecruisers sont dans l'espace profond"
    fleet2 ships do: [ :ship | ship region: (DeepSpace new) ].

    "Engager le combat"
    fleet1 engage: fleet2 in: region.

    "Vérifier si les battlecruisers sont détruits"
	fleet2 ships do: [ :ship |    self assert: ship hull equals: 0. ]

]

{ #category : 'tests' }
MyTest >> testDestroyersVsBattlecruisersInDeepSpaceAndNebula [ 
    | fleet1 fleet2 region |

    "Créer une flotte de 5 destroyers"
    fleet1 := Fleet new.
    5 timesRepeat: [ fleet1 addShip: (Destroyer new) ].

    "Créer une flotte de 3 battlecruisers"
    fleet2 := Fleet new.
    3 timesRepeat: [ fleet2 addShip: (Battlecruiser new) ].

    "Assigner les flottes aux régions appropriées"
    region := DeepSpace new.

    "Les battlecruisers sont dans une nébuleuse"
    fleet2 ships do: [ :ship | ship region: (Nebula new) ].

    "Engager le combat"
    fleet1 engage: fleet2 in: region.

	fleet2 ships do: [ :ship |    self assert: ship hull equals: 0. ]
    "Vérifier si les battlecruisers sont détruits"


]

{ #category : 'tests' }
MyTest >> testFighterCreation [ 
    | fighter |
    fighter := Fighter new.
    
    "Vérification des valeurs initialisées"
    self assert: (fighter shields = 100).
    self assert: (fighter hull = 400).
    self assert: (fighter damage = 50).
]

{ #category : 'tests' }
MyTest >> testFighterFleetVsBattlecruiserInInhabitedSolarSystem [ 
    | fleet1 fleet2 region |

    "Créer une flotte de 20 chasseurs"
    fleet1 := Fleet new.
    20 timesRepeat: [ fleet1 addShip: (Fighter new) ].

    "Créer une flotte de 1 battlecruiser"
    fleet2 := Fleet new.
    fleet2 addShip: (Battlecruiser new).

    "Assigner les deux flottes dans un système solaire habité"
    region := InhabitedSolarSystem new.

    "Engager le combat"
    fleet1 engage: fleet2 in: region.

    "Vérifier que le battlecruiser a été détruit"
    self assert: (fleet2 isEmpty).

]

{ #category : 'tests' }
MyTest >> testFighterVsBattlecruiserInInhabitedSolarSystem [ 
    | fleet1 fleet2 region |

    "Créer une flotte de 2 chasseurs"
    fleet1 := Fleet new.
    fleet1 addShip: (Fighter new).
    fleet1 addShip: (Fighter new).

    "Créer une flotte de 1 battlecruiser"
    fleet2 := Fleet new.
    fleet2 addShip: (Battlecruiser new).

    "Assigner les deux flottes dans un système solaire habité"
    region := InhabitedSolarSystem new.

    "Engager le combat"
    fleet1 engage: fleet2 in: region.

    "Vérifier que le battlecruiser a été détruit"
    self assert: (fleet2 isEmpty).

]

{ #category : 'tests' }
MyTest >> testFighterVsFighterInInhabitedSolarSystem [ 
    | fleet1 fleet2 region |

    "Créer une flotte de chasseurs"
    fleet1 := Fleet new.
    fleet1 addShip: (Fighter new).
    
    fleet2 := Fleet new.
    fleet2 addShip: (Fighter new).

    "Assigner les deux flottes dans un système solaire habité"
    region := InhabitedSolarSystem new.

    "Engager le combat"
    fleet1 engage: fleet2 in: region.

    "Vérifier que les deux flottes sont détruites ou non"
	fleet1 ships do: [ :ship |    self assert: ship shields equals: 0. ].
	fleet2 ships do: [ :ship |    self assert: ship shields equals: 0. ].
	


	
    
]

{ #category : 'tests' }
MyTest >> testFightersVsDestroyersAndCruisersInAsteroidField [ 
    | fleet1 fleet2 region |

    "Créer une flotte de 50 chasseurs"
    fleet1 := Fleet new.
    50 timesRepeat: [ fleet1 addShip: (Fighter new) ].

    "Créer une flotte de 5 destroyers et 2 cruisers"
    fleet2 := Fleet new.
    5 timesRepeat: [ fleet2 addShip: (Destroyer new) ].
    2 timesRepeat: [ fleet2 addShip: (Cruiser new) ].

    "Assigner les flottes à un champ d'astéroïdes"
    region := AsteroidField new.

    "Engager le combat"
    fleet1 engage: fleet2 in: region.

    "Vérifier que la flotte des destroyers et des cruisers a été détruite"
    self assert: (fleet2 isEmpty).

]
