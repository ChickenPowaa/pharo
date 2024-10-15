Class {
	#name : 'HighSignal',
	#superclass : 'LogicalSignal',
	#category : 'LogicalCircuit',
	#package : 'LogicalCircuit'
}

{ #category : 'logical operations' }
HighSignal >> and: aSignal [
    "L'opération AND d'un signal haut avec un autre signal dépend de l'autre signal."
    ^ aSignal.
]

{ #category : 'logical operations' }
HighSignal >> not [
    "Renvoie un LowSignal, car NOT d'un signal haut est bas."
    ^ LowSignal new.
]

{ #category : 'controlling' }
HighSignal >> or: aSignal [
    "L'opération OR avec un signal haut donne toujours un signal haut."
    ^ self.
]

{ #category : 'evaluating' }
HighSignal >> value [
    ^ 1.
]
