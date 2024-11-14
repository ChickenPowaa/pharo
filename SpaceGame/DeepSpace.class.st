Class {
	#name : 'DeepSpace',
	#superclass : 'SpaceRegion',
	#category : 'SpaceGame',
	#package : 'SpaceGame'
}

{ #category : 'as yet unclassified' }
DeepSpace class >> deepSpace [ 
        ^ DeepSpace new.
    
]

{ #category : 'as yet unclassified' }
DeepSpace >> applyEffectsToFleet: fleet [ 
    fleet ships do: [ :ship |
        (ship isFighter) ifTrue: [
            ship applyShieldModifier: 0.  "Les chasseurs n'ont pas de boucliers en espace profond"
        ].
        (ship isCruiser) ifTrue: [
            ship applyShieldModifier: 0.5.  "Les croiseurs perdent de l'efficacité de boucliers"
        ].
        ((ship isDestroyer) or: [ ship isBattleCruiser ]) ifTrue: [
            ship applyShieldModifier: 0.5.  "Les destroyers et battlecruisers perdent aussi beaucoup de boucliers"
        ].
    ].

]

{ #category : 'as yet unclassified' }
DeepSpace >> modifierForAttacker: attacker attackerType: attackerType defenderType: defenderType [ 
    "Modificateur pour les radiations dans l'espace profond affectant les boucliers"
    ^ 0.9.  "Les boucliers sont moins efficaces, réduction des dommages"
]
