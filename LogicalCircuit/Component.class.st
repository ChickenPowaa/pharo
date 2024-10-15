Class {
	#name : 'Component',
	#superclass : 'Object',
	#instVars : [
		'id'
	],
	#category : 'LogicalCircuit',
	#package : 'LogicalCircuit'
}

{ #category : 'accessing' }
Component >> id [
    ^ id ifNil: [self hash].
]

{ #category : 'accessing' }
Component >> id: anId [
    id := anId.
]
