Class {
	#name : 'Source',
	#superclass : 'Object',
	#instVars : [
		'state'
	],
	#category : 'LogicalCircuit',
	#package : 'LogicalCircuit'
}

{ #category : 'initialization' }
Source >> initialize [
    super initialize.
    state := HighSignal new.
]

{ #category : 'as yet unclassified' }
Source >> off [
    "Désactive la source."
    state := LowSignal new.
]

{ #category : 'initialization' }
Source >> on [
    state := HighSignal new.
]

{ #category : 'operations' }
Source >> state [
    ^ state.
]

{ #category : 'operations' }
Source >> state: aSignal [
    state := aSignal.
]

{ #category : 'operations' }
Source >> toggle [
    state := state not.
]
