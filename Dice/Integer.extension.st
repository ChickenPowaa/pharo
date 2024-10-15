Extension { #name : 'Integer' }

{ #category : '*Dice' }
Integer >> D: aNumberOfFaces [
    "Créer un gestionnaire de dés et ajouter un nombre spécifié de dés"
    ^ DiceHandle new addDie: (Die withFaces: aNumberOfFaces).
]
