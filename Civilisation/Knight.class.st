Class {
	#name : 'Knight',
	#superclass : 'Unit',
	#category : 'Civilisation',
	#package : 'Civilisation'
}

{ #category : 'initialization' }
Knight >> initialize [ 
        super initialize: 'Knight' withHealth: 100 andExperience: 1.
        attackingPower := 20.
        defensePower := 5.

]

{ #category : 'initialization' }
Knight >> initializeWithExperience: anExperience [ 
        super initialize: 'Knight' withHealth: 100 andExperience: anExperience .
        attackingPower := 20.
        defensePower := 5.

]
