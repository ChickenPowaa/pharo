Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'tests' }
DieTest >> testAddingTwiceTheSameDice [
	| handle |
	handle := DiceHandle new.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 1
]

{ #category : 'tests' }
DieTest >> testCreationAdding [
	| handle |
	handle := DiceHandle new
	addDie: (Die withFaces: 6);
	addDie: (Die withFaces: 10);
	yourself.
	self assert: handle diceNumber equals: 2
]

{ #category : 'tests' }
DieTest >> testCreationIsOk [
	self assert: (Die withFaces: 20) faces equals: 20

]

{ #category : 'tests' }
DieTest >> testInitializeIsOk [
    self assert: (Die new faces) equals: 6.
]

{ #category : 'tests' }
DieTest >> testRolling [
    | d |
    d := Die new.
    10 timesRepeat: [
        self assert: (d roll between: 1 and: 6)
    ].
]
