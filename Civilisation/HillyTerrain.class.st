Class {
	#name : 'HillyTerrain',
	#superclass : 'Terrain',
	#category : 'Civilisation',
	#package : 'Civilisation'
}

{ #category : 'as yet unclassified' }
HillyTerrain >> atackingTerrainImpact [ 
    "Cette méthode est abstraite et doit être implémentée dans les sous-classes"
    ^0
]

{ #category : 'as yet unclassified' }
HillyTerrain >> defendingTerrainImpact [ 
    "Cette méthode est abstraite et doit être implémentée dans les sous-classes"
    ^10
]
