Class {
	#name : 'LowSignal',
	#superclass : 'LogicalSignal',
	#category : 'LogicalCircuit',
	#package : 'LogicalCircuit'
}

{ #category : 'logical operations' }
LowSignal >> and: aSignal [
    "L'opération AND avec un signal bas donne toujours un signal bas."
    ^ self.
]

{ #category : 'logical operations' }
LowSignal >> not [
    "Renvoie un HighSignal, car NOT d'un signal bas est haut."
    ^ HighSignal new.
]

{ #category : 'controlling' }
LowSignal >> or: aSignal [
    "L'opération OR avec un signal bas dépend de l'autre signal."
    ^ aSignal.
]

{ #category : 'evaluating' }
LowSignal >> value [
    ^ 0.
]
