Class {
	#name : 'Cruiser',
	#superclass : 'Ship',
	#category : 'SpaceGame',
	#package : 'SpaceGame'
}

{ #category : 'initialization' }
Cruiser >> initialize [ 
	shields := 100.
	hull := 400.
	damage := 50. 
   damageModifier := 1.
]

{ #category : 'testing' }
Cruiser >> isCruiser [ 
    ^ true

]
