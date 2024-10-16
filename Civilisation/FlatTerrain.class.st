Class {
	#name : 'FlatTerrain',
	#superclass : 'Terrain',
	#category : 'Civilisation',
	#package : 'Civilisation'
}

{ #category : 'as yet unclassified' }
FlatTerrain >> atackingTerrainImpact [ 
    "Cette méthode est abstraite et doit être implémentée dans les sous-classes"
    ^0
]

{ #category : 'as yet unclassified' }
FlatTerrain >> defendingTerrainImpact [ 
    "Cette méthode est abstraite et doit être implémentée dans les sous-classes"
    ^0
]
