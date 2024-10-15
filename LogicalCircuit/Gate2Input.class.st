Class {
	#name : 'Gate2Input',
	#superclass : 'Object',
	#instVars : [
		'input1',
		'input2'
	],
	#category : 'LogicalCircuit',
	#package : 'LogicalCircuit'
}

{ #category : 'accessing' }
Gate2Input >> input1 [
    ^ input1.
]

{ #category : 'accessing' }
Gate2Input >> input1: aComponent [
    input1 := aComponent.
]

{ #category : 'accessing' }
Gate2Input >> input2 [
    ^ input2.

]

{ #category : 'accessing' }
Gate2Input >> input2: aComponent [
    input2 := aComponent.
]

{ #category : 'accessing - structure variables' }
Gate2Input >> state [
    "Cette méthode est abstraite et doit être implémentée dans les sous-classes"
    self subclassResponsibility.
]
