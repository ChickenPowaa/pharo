Class {
	#name : 'And',
	#superclass : 'Gate2Input',
	#category : 'LogicalCircuit',
	#package : 'LogicalCircuit'
}

{ #category : 'as yet unclassified' }
And >> inputs [
    ^ {input1. input2}.
]

{ #category : 'accessing - structure variables' }
And >> state [
    ^ (input1 state and: input2 state).

]
