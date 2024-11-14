Class {
	#name : 'AsteroidField',
	#superclass : 'SpaceRegion',
	#category : 'SpaceGame',
	#package : 'SpaceGame'
}

{ #category : 'as yet unclassified' }
AsteroidField class >> asteroidField [ 
        ^ AsteroidField new.
    
]

{ #category : 'as yet unclassified' }
AsteroidField >> modifierForAttacker: attacker attackerType: attackerType defenderType: defenderType [ 
    "Modificateur spécifique aux champs d'astéroïdes"
    "Les chasseurs ne sont pas affectés, mais d'autres types de vaisseaux subissent des pénalités"
    (attackerType = Fighter) ifTrue: [^ 1.0].  "Les chasseurs n'ont pas de modificateur"
    ^ 0.5.  "Autres vaisseaux subissent une réduction de dommage"
]
