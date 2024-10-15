Class {
	#name : 'Fan',
	#superclass : 'SingleInput',
	#category : 'LogicalCircuit',
	#package : 'LogicalCircuit'
}

{ #category : 'accessing - structure variables' }
Fan >> state [
    "Retourne l'état du fan en fonction de l'entrée."
    ^ input state.  "Le ventilateur fonctionne selon l'état de son entrée."
]
