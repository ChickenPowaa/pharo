Class {
	#name : 'Circuit',
	#superclass : 'Object',
	#instVars : [
		'components',
		'finalOutput'
	],
	#category : 'LogicalCircuit',
	#package : 'LogicalCircuit'
}

{ #category : 'as yet unclassified' }
Circuit >> collectComponentsFrom: aComponent [
    "Ajoute le composant à la collection et continue à collecter les composants en amont s'ils existent."
    components add: aComponent.
    (aComponent respondsTo: #input1) ifTrue: [
        self collectComponentsFrom: (aComponent perform: #input1).
    ].
    (aComponent respondsTo: #input2) ifTrue: [
        self collectComponentsFrom: (aComponent perform: #input2).
    ].
]

{ #category : 'as yet unclassified' }
Circuit >> collectComponentsFrom: aComponent to: components [
    components add: aComponent.
    aComponent inputs do: [:input | self collectComponentsFrom: input to: components].
]

{ #category : 'accessing' }
Circuit >> components [
    ^ components ifNil: [components := Set new].
]

{ #category : 'instance creation' }
Circuit >> fromOutput: aComponent [
    | components |
    components := OrderedCollection new.
    self collectComponentsFrom: aComponent to: components.
    components do: [:each | self addComponent: each].
]

{ #category : 'initialization' }
Circuit >> initialize [
    super initialize.
    components := OrderedCollection new.
]

{ #category : 'printing' }
Circuit >> printOn: aStream [
    components do: [:each | each printOn: aStream].
]
