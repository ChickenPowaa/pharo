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
    | result |
    result := DiceHandle new.
    result dice addAll: self dice.
    result dice addAll: anotherHandle dice.
    ^ result.

]

{ #category : 'adding' }
DiceHandle >> addDie: aDie times: aNumber [
    aNumber timesRepeat: [ dice add: aDie ].
]

{ #category : 'initialization' }
DiceHandle >> initialize [
    dice := OrderedCollection new.
]

{ #category : 'as yet unclassified' }
DiceHandle >> roll [
    "Lancer tous les dés et retourner la somme des résultats."
    ^ dice collect: [ :each | each roll ] sum.
]

{ #category : 'accessing' }
DiceHandle >> total [
    ^ dice inject: 0 into: [:sum :die | sum + die roll].
]
