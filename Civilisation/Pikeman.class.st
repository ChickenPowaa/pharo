Class {
	#name : 'Pikeman',
	#superclass : 'Unit',
	#category : 'Civilisation',
	#package : 'Civilisation'
}

{ #category : 'initialization' }
Pikeman >> initialize [ 
        super initialize: 'Pikeman' withHealth: 100 andExperience: 1.
        attackingPower := 5.
        defensePower := 20.
]

{ #category : 'initialization' }
Pikeman >> initializeWithExperience: anExperience [ 
        super initialize: 'Pikeman' withHealth: 100 andExperience: anExperience .
        attackingPower := 5.
        defensePower := 20.
]
