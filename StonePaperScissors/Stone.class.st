Class {
	#name : 'Stone',
	#superclass : 'Element',
	#category : 'StonePaperScissors',
	#package : 'StonePaperScissors'
}

{ #category : 'as yet unclassified' }
Stone >> play: anotherTool [
    ^ anotherTool playAgainstStone: self.
]

{ #category : 'as yet unclassified' }
Stone >> playAgainstPaper: aPaper [
    ^ #paper.
]

{ #category : 'as yet unclassified' }
Stone >> playAgainstScissors: aScissors [
    ^ #stone.
]

{ #category : 'as yet unclassified' }
Stone >> playAgainstStone: aStone [
    ^ #draw.
]
