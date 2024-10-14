Class {
	#name : 'StonePaperScissorsTest',
	#superclass : 'TestCase',
	#classInstVars : [
		'testScissorAgsinstPaperIsWinning'
	],
	#category : 'StonePaperScissors-Tests',
	#package : 'StonePaperScissors-Tests'
}

{ #category : 'tests' }
StonePaperScissorsTest >> testScissorAgsinstPaperIsWinning [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	self assert: (Scissors new play: Paper new) equals: #scissors

]

{ #category : 'tests' }
StonePaperScissorsTest >> testStoneAgainsStone [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	self assert: (Stone new play: Stone new) equals: #draw
]

{ #category : 'as yet unclassified' }
StonePaperScissorsTest >> testStoneAgainstPaperIsWinning [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	self assert: (Stone new play: Paper new) equals: #paper

]
