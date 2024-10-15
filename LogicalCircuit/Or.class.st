Class {
	#name : 'Or',
	#superclass : 'Gate2Input',
	#category : 'LogicalCircuit',
	#package : 'LogicalCircuit'
}

{ #category : 'as yet unclassified' }
Or >> inputs [
    ^ {input1. input2}.
]

{ #category : 'accessing - structure variables' }
Or >> state [
    ^ (input1 state or: input2 state).

]
