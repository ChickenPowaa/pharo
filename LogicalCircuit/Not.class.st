Class {
	#name : 'Not',
	#superclass : 'SingleInput',
	#category : 'LogicalCircuit',
	#package : 'LogicalCircuit'
}

{ #category : 'as yet unclassified' }
Not >> inputs [
    ^ {input}.
]

{ #category : 'accessing - structure variables' }
Not >> state [
    "Retourne l'état de l'entrée inversé."
    ^ input state not.

]
