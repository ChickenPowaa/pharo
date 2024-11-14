Class {
	#name : 'InhabitedSystem',
	#superclass : 'SpaceRegion',
	#category : 'SpaceGame',
	#package : 'SpaceGame'
}

{ #category : 'as yet unclassified' }
InhabitedSystem class >> inhabitantSolarSystem [ 
        ^ InhabitedSolarSystem new.
    
]

{ #category : 'as yet unclassified' }
InhabitedSystem >> modifierForAttacker [
    "Retourner un modificateur pour un combat dans un système solaire habité"
    ^ 1.0. "Pas de modification, les vaisseaux se battent normalement"

]

{ #category : 'as yet unclassified' }
InhabitedSystem >> modifierForAttacker: attacker attackerType: attackerType defenderType: defenderType [ 
    "Retourner un modificateur pour un combat dans un système solaire habité"
    ^ 1.0. "Pas de modification, les vaisseaux se battent normalement"

]
