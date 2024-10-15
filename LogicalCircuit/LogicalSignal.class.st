Class {
	#name : 'LogicalSignal',
	#superclass : 'Object',
	#category : 'LogicalCircuit',
	#package : 'LogicalCircuit'
}

{ #category : 'logical operations' }
LogicalSignal >> and: aSignal [
    "Renvoie l'opération logique AND entre deux signaux."
    self subclassResponsibility.
]

{ #category : 'logical operations' }
LogicalSignal >> not [
    "Renvoie l'inverse du signal logique."
    self subclassResponsibility.
]

{ #category : 'as yet unclassified' }
LogicalSignal >> oppositeSignal [
    ^ self == HighSignal ifTrue: [LowSignal new] else: [HighSignal new].
]

{ #category : 'controlling' }
LogicalSignal >> or: aSignal [
    "Renvoie l'opération logique OR entre deux signaux."
    self subclassResponsibility.
]

{ #category : 'evaluating' }
LogicalSignal >> value [
    "Méthode abstraite. À implémenter dans les sous-classes."
    self subclassResponsibility.

]
