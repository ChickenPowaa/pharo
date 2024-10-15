Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice',
	#package : 'Dice'
}

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

{ #category : 'as yet unclassified' }
Die >> roll [
    ^ (1 to: faces) atRandom.
]

{ #category : 'as yet unclassified' }
Die >> withFaces: aNumber [
    "Créer une instance de Die avec un nombre spécifié de faces."
    ^ self new initializeWithFaces: aNumber
]
