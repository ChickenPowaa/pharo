Class {
	#name : 'Nebula',
	#superclass : 'SpaceRegion',
	#category : 'SpaceGame',
	#package : 'SpaceGame'
}

{ #category : 'as yet unclassified' }
Nebula class >> nebula [ 
        ^ Nebula new.
    
]

{ #category : 'as yet unclassified' }
Nebula >> applyEffectsToFleet: fleet [ 
    fleet ships do: [ :ship |
        (ship isFighter) ifTrue: [
            ship applyDamageModifier: 0.8.  "Les chasseurs sont moins affectés"
        ].
        (ship isCruiser) ifTrue: [
            ship applyDamageModifier: 0.7.  "Les croiseurs ont des capteurs de haute technologie"
        ].
        ((ship isDestroyer) or: [ ship isBattleCruiser ]) ifTrue: [
            ship applyDamageModifier: 0.5.  "Les destroyers et battlecruisers sont fortement affectés"
        ].
    ].

]

{ #category : 'as yet unclassified' }
Nebula >> modifierForAttacker: attacker attackerType: attackerType defenderType: defenderType [ 
    "Modificateur pour une nébuleuse affectant la précision"
    ^ 0.8.  "Les dommages sont réduits en raison de l'impact sur les capteurs"
]
