Class {
	#name : 'Warrior',
	#superclass : 'Unit',
	#category : 'Civilisation',
	#package : 'Civilisation'
}

{ #category : 'initialization' }
Warrior >> initialize [ 
        super initialize: 'Warrior' withHealth: 100 andExperience: 1.
        attackingPower := 10.
        defensePower := 10.
    
]

{ #category : 'initialization' }
Warrior >> initializeWithExperience: anExperience [
        super initialize: 'Warrior' withHealth: 100 andExperience: anExperience .
        attackingPower := 10.
        defensePower := 10.
]
