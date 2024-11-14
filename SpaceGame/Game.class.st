Class {
	#name : 'Game',
	#superclass : 'Object',
	#instVars : [
		'regionMap'
	],
	#category : 'SpaceGame',
	#package : 'SpaceGame'
}

{ #category : 'initialization' }
Game >> initialize [ 
        regionMap := Array new: 10.
        "Définir les régions dans la carte"
        regionMap at: 1 put: AsteroidField new.
        regionMap at: 2 put: Nebula new.
        regionMap at: 3 put: DeepSpace new.
        regionMap at: 4 put: InhabitedSolarSystem new.
    
]

{ #category : 'accessing' }
Game >> regionAt: aPosition [ 
        "Retourner la région à la position donnée dans la carte des régions"
        ^ regionMap at: aPosition ifAbsent: [nil].
    
]
