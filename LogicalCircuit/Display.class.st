Class {
	#name : 'Display',
	#superclass : 'SingleInput',
	#category : 'LogicalCircuit',
	#package : 'LogicalCircuit'
}

{ #category : 'accessing - structure variables' }
Display >> state [
    "Retourne l'état du display en fonction de l'entrée."
    ^ input state.  "L'état de l'appareil est celui de son entrée."
]
