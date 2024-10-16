Class {
	#name : 'Unit',
	#superclass : 'Object',
	#instVars : [
		'health',
		'experience',
		'attackingPower',
		'defensePower',
		'type'
	],
	#category : 'Civilisation',
	#package : 'Civilisation'
}

{ #category : 'as yet unclassified' }
Unit >> attackPower [ 
        ^ attackingPower * self experienceFactorAtt.
    
]

{ #category : 'accessing' }
Unit >> defensePower [ 
        ^ defensePower * self experienceFactorDef.
    
]

{ #category : 'as yet unclassified' }
Unit >> experienceFactorAtt [ 
        ^ (experience = 1) ifTrue: [1]
            ifFalse: [experience = 2 ifTrue: [1.5] ifFalse: [2]].
    
]

{ #category : 'as yet unclassified' }
Unit >> experienceFactorDef [ 
        ^ (experience = 1) ifTrue: [1]
            ifFalse: [experience = 2 ifTrue: [1.75] ifFalse: [2]].
    
]

{ #category : 'accessing' }
Unit >> health [ 
        ^ health
    
]

{ #category : 'initialization' }
Unit >> initialize: aType withHealth: aHealth andExperience: anExperience [ 
        health := aHealth.
        experience := anExperience.
        attackingPower := 0.  "Valeur par défaut, à redéfinir dans les sous-classes"
        defensePower := 0. "Valeur par défaut, à redéfinir dans les sous-classes"
    
]

{ #category : 'as yet unclassified' }
Unit >> takeDamage: damage [ 
        health := health - damage.
        health < 0 ifTrue: [health := 0].
    
]
