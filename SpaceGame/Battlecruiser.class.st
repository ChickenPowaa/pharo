Class {
	#name : 'Battlecruiser',
	#superclass : 'Ship',
	#category : 'SpaceGame',
	#package : 'SpaceGame'
}

{ #category : 'initialization' }
Battlecruiser >> initialize [ 
	shields := 100.
	hull := 400.
	damage := 50. 
   damageModifier := 1.
]

{ #category : 'testing' }
Battlecruiser >> isBattleCruiser [ 
    ^ true


]
