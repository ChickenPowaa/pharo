Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'as yet unclassified' }
Die class >> withFaces: aNumber [
    "Crée une instance de Die avec un nombre spécifié de faces."
    ^ self new initializeWithFaces: aNumber.

]

{ #category : 'accessing' }
Die >> faces [
    ^ faces.
]

{ #category : 'initialization' }
Die >> initialize [
    faces := 6.
]

{ #category : 'initialization' }
Die >> initializeWithFaces: aFaces [
    faces := aFaces.
]

{ #category : 'printing' }
Die >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: '(';
		print: faces;
		nextPutAll: ')'

]

{ #category : 'as yet unclassified' }
Die >> roll [
    ^ (1 to: faces) atRandom.
]
