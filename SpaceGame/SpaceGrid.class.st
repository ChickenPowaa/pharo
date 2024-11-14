Class {
	#name : 'SpaceGrid',
	#superclass : 'Object',
	#instVars : [
		'grid',
		'size'
	],
	#category : 'SpaceGame',
	#package : 'SpaceGame'
}

{ #category : 'accessing' }
SpaceGrid class >> size: size [ 
        ^ self new initializeWithSize: size.
    
]

{ #category : 'accessing' }
SpaceGrid >> cellAt: index [ 
        ^ grid at: index.
    
]

{ #category : 'initialization' }
SpaceGrid >> initializeWithSize: size [ 
        self size: size.
        grid := Array new: size.  "Crée un tableau de taille 'size'"
        
        "Initialisation des cellules"
        1 to: size do: [ :i |
            grid at: i put: OrderedCollection new.  "Chaque cellule contient une collection vide"
        ].
    
]

{ #category : 'accessing' }
SpaceGrid >> placeFleet: object at: index [ 
        (self cellAt: index) add: object.
    
]

{ #category : 'accessing' }
SpaceGrid >> size [ 
        ^ grid size.
    
]
