Class {
	#name : 'DiceHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'arithmetic' }
DiceHandle >> + anotherHandle [
    ^ self roll + anotherHandle roll.
]

{ #category : 'adding' }
DiceHandle >> addDie: aDie [
    dice add: aDie.
]

{ #category : 'as yet unclassified' }
DiceHandle >> diceNumber [
    "Retourne le nombre de dés dans le gestionnaire."
    ^ dice size.
]

{ #category : 'initialization' }
DiceHandle >> initialize [
    dice := OrderedCollection new.
]

{ #category : 'as yet unclassified' }
DiceHandle >> roll [
    "Lancer tous les dés et retourner la somme des résultats."
    ^ dice sum: [ :each | each roll ]
]

{ #category : 'accessing' }
DiceHandle >> total [
    ^ dice inject: 0 into: [:sum :die | sum + die roll].
]
