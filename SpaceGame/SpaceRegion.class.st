Class {
	#name : 'SpaceRegion',
	#superclass : 'Object',
	#category : 'SpaceGame',
	#package : 'SpaceGame'
}

{ #category : 'as yet unclassified' }
SpaceRegion >> modifierForAttacker: fleet attackerType: attackerType defenderType: defenderType [ 
        "Retourne le modificateur de dommage basé sur le type de région et les types de vaisseaux"
        ^ 1.
    
]
