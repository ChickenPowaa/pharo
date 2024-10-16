Class {
	#name : 'Archer',
	#superclass : 'Unit',
	#category : 'Civilisation',
	#package : 'Civilisation'
}

{ #category : 'initialization' }
Archer >> initialize [ 
        super initialize: 'Archer' withHealth: 100 andExperience: 1.
        attackingPower := 20.
        defensePower := 5.

]

{ #category : 'initialization' }
Archer >> initializeWithExperience: anExperience [ 
        super initialize: 'Warrior' withHealth: 100 andExperience: anExperience.
        attackingPower := 10.  "Le guerrier a une puissance d'attaque de 10"
        defensePower := 10. "Le guerrier a une puissance de défense de 10"
    
]
