Class {
	#name : 'Ship',
	#superclass : 'Object',
	#instVars : [
		'shields',
		'hull',
		'damage',
		'damageModifier',
		'region'
	],
	#category : 'SpaceGame',
	#package : 'SpaceGame'
}

{ #category : 'instance creation' }
Ship class >> new [ 
        ^ super new initialize
    
]

{ #category : 'instance creation' }
Ship class >> newShields: shields hull: hull damage: damage [ 
        ^ self new initializeWithShields: shields hull: hull damage: damage.
    
]

{ #category : 'as yet unclassified' }
Ship >> absorbDamage: damage [ 
    | remainingDamage |  "Déclare une variable temporaire pour stocker les dégâts restants"
    
    "Dégâts appliqués aux boucliers"
    shields := shields - damage.
    
    "Si les boucliers tombent en dessous de 0, les dégâts restants sont appliqués à la coque"
    shields < 0 ifTrue: [
        remainingDamage := shields negated.
        shields := 0.
        
        "Appliquer les dégâts restants à la coque"
        hull := hull - remainingDamage.
        
        "Retourner les dégâts restants (s'il y en a) si la coque tombe en dessous de 0"
        hull < 0 ifTrue: [
            remainingDamage := hull negated.
            hull := 0.
            ^ remainingDamage.  "Retourne les dégâts restants après destruction"
        ].
        ^ 0.  "Retourne 0 si les dégâts restants n’ont pas détruit le vaisseau"
    ].
    
    "Retourne 0 s’il n’a pas suffi à percer les boucliers"
    ^ 0.


]

{ #category : 'as yet unclassified' }
Ship >> applyDamageModifier: factor [ 
    damageModifier := factor.

]

{ #category : 'as yet unclassified' }
Ship >> applyHullModifier: factor [ 
    hull := hull * factor.


]

{ #category : 'as yet unclassified' }
Ship >> applyShieldModifier: factor [ 
    shields := shields * factor.

]

{ #category : 'accessing' }
Ship >> damage [ 
	 ^ damage 
]

{ #category : 'as yet unclassified' }
Ship >> fireDamage [ 
    ^ self damage.  "Renvoie la valeur des dégâts du vaisseau"

]

{ #category : 'accessing' }
Ship >> hull [ 
 ^ hull 

]

{ #category : 'initialization' }
Ship >> initialize [ 
        shields := 0.
        hull := 0.
        damage := 0.
        damageModifier := 1.
    

]

{ #category : 'initialization' }
Ship >> initializeWithShields: s hull: h damage: d [ 
        shields := s.
        hull := h.
        damage := d.
        damageModifier := 1.

]

{ #category : 'testing' }
Ship >> isBattleCruiser [ 
    ^ false

]

{ #category : 'testing' }
Ship >> isCruiser [ 
    ^ false

]

{ #category : 'testing' }
Ship >> isDestroyed [ 
    "Un vaisseau est détruit si ses points de coque sont à zéro ou en dessous"
    ^ self hull <= 0

]

{ #category : 'testing' }
Ship >> isDestroyer [ 
    ^ false

]

{ #category : 'testing' }
Ship >> isFighter [ 
    ^ false

]

{ #category : 'accessing' }
Ship >> region [ 
        ^region
    
]

{ #category : 'accessing' }
Ship >> region: aRegion [ 
        region := aRegion.
    
]

{ #category : 'accessing' }
Ship >> shields [
  ^ shields 
]
