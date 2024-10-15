Class {
	#name : 'TestLogicalSignal',
	#superclass : 'TestCase',
	#category : 'LogicalCircuit-Tests',
	#package : 'LogicalCircuit-Tests'
}

{ #category : 'tests' }
TestLogicalSignal >> testAndGate [
    | source1 source2 andGate |
    source1 := Source new.
    source2 := Source new.
    andGate := And new.

    andGate input1: source1.
    andGate input2: source2.

    "Test avec source1 et source2 activées"
    source1 on.
    source2 on.
    self assert: (andGate state value = 1).

    "Test avec une seule source activée"
    source1 off.
    source2 on.
    self assert: (andGate state value = 0).

    "Test avec les deux sources désactivées"
    source1 off.
    source2 off.
    self assert: (andGate state value = 0).
]

{ #category : 'tests' }
TestLogicalSignal >> testCircuitCreationAndComponentCollection [
    | source1 source2 orGate notGate andGate fan circuit |

    "Initialisation des sources et des portes logiques"
    source1 := Source new.
    source2 := Source new.
    orGate := Or new.
    notGate := Not new.
    andGate := And new.
    fan := Fan new.

    "Connexion des composants"
    orGate input1: source1.
    orGate input2: source2.
    notGate input: source1.
    andGate input1: orGate.
    andGate input2: notGate.
    fan input: andGate.

    "Création du circuit à partir de la sortie finale (fan)"
    circuit := Circuit new.
    circuit fromOutput: fan.

    "Vérifie que tous les composants ont bien été ajoutés au circuit"
    self assert: (circuit components includes: source1).
    self assert: (circuit components includes: source2).
    self assert: (circuit components includes: orGate).
    self assert: (circuit components includes: notGate).
    self assert: (circuit components includes: andGate).
    self assert: (circuit components includes: fan).
]

{ #category : 'tests' }
TestLogicalSignal >> testFinalState [
	| source1 source2 sourceSecurity orGate notGate andGate fan device finalState |

	"Initialisation des composants."
	source1 := Source new.
	source2 := Source new.
	sourceSecurity := Source new.
	orGate := Or new.
	notGate := Not new.
	andGate := And new.
	fan := Fan new.
	device := Display new.

	"Connexion des entrées."
	orGate input1: source1.
	orGate input2: source2.
	notGate input: sourceSecurity.
	andGate input1: orGate.
	andGate input2: notGate.
	fan input: andGate.
	device input: fan.

	"Alimentation des sources."
	source1 on.
	source2 off.
	sourceSecurity on. "Change sourceSecurity pour off"

	"Vérification de l'état final."
	finalState := device state value.
	self assert: (finalState = 0).
]

{ #category : 'tests' }
TestLogicalSignal >> testOrGate [
    | source1 source2 orGate |
    source1 := Source new.
    source2 := Source new.
    orGate := Or new.

    orGate input1: source1.
    orGate input2: source2.

    "Test avec source1 activée et source2 désactivée"
    source1 on.
    source2 off.
    self assert: (orGate state value = 1).

    "Test avec source1 et source2 désactivées"
    source1 off.
    source2 off.
    self assert: (orGate state value = 0).

    "Test avec source1 désactivée et source2 activée"
    source1 off.
    source2 on.
    self assert: (orGate state value = 1).
]

{ #category : 'tests' }
TestLogicalSignal >> testSourceIsOnByDefault [
    | sourceSecurity |
    sourceSecurity := Source new.
    self assert: (sourceSecurity state value = 1).
]

{ #category : 'tests' }
TestLogicalSignal >> testSourceOnOff [
    | source |
    source := Source new.
    self assert: (source state value = 1). "Par défaut, on est allumé"
    source off.
    self assert: (source state value = 0).
    source on.
    self assert: (source state value = 1).
]

{ #category : 'tests' }
TestLogicalSignal >> testSourceToggle [
    | source |
    source := Source new.
    self assert: (source state value = 1).
    source toggle.
    self assert: (source state value = 0).
    source toggle.
    self assert: (source state value = 1).
]
