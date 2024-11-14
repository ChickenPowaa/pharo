Class {
	#name : 'Fighter',
	#superclass : 'Ship',
	#category : 'SpaceGame',
	#package : 'SpaceGame'
}

{ #category : 'as yet unclassified' }
Fighter >> applyDeepSpaceEffect [ 
        shields := 0.  "Les boucliers des chasseurs sont annulés dans l’espace profond"
    
]

{ #category : 'as yet unclassified' }
Fighter >> applyHullModifier: factor [ 
    hull := hull * factor.

]

{ #category : 'as yet unclassified' }
Fighter >> applyShieldModifier: factor [ 
    shields := shields * factor.

]

{ #category : 'as yet unclassified' }
Fighter >> calculateDamage [ 
    ^ damage * damageModifier.

]

{ #category : 'initialization' }
Fighter >> initialize [ 
	shields := 100.
	hull := 400.
	damage := 50. 
   damageModifier := 1.
]

{ #category : 'initialization' }
Fighter >> initializeWithShields: aShields hull: aHull damage: aDamage [ 
        "On peut ajouter des comportements spécifiques à Fighter si besoin"
        super initializeWithShields: aShields hull: aHull damage: aDamage.
    
    
]

{ #category : 'testing' }
Fighter >> isFighter [ 
    ^ true

]
