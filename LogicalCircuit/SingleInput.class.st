Class {
	#name : 'SingleInput',
	#superclass : 'Class',
	#instVars : [
		'input'
	],
	#category : 'LogicalCircuit',
	#package : 'LogicalCircuit'
}

{ #category : 'accessing' }
SingleInput >> input [
    "Retourne le composant d'entrée actuel."
    ^ input.
]

{ #category : 'accessing' }
SingleInput >> input: aComponent [
    "Cette méthode permet de connecter un composant d'entrée à cette porte."
    input := aComponent.
]
