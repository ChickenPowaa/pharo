Class {
	#name : 'Destroyer',
	#superclass : 'Ship',
	#category : 'SpaceGame',
	#package : 'SpaceGame'
}

{ #category : 'initialization' }
Destroyer >> initialize [ 
	shields := 100.
	hull := 400.
	damage := 50. 
   damageModifier := 1.
]

{ #category : 'testing' }
Destroyer >> isDestroyer [ 
    ^ true

]
