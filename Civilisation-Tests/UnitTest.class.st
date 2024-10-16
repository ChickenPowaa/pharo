"
An UnitTest is a test class for testing the behavior of Unit
"
Class {
	#name : 'UnitTest',
	#superclass : 'TestCase',
	#category : 'Civilisation-Tests',
	#package : 'Civilisation-Tests'
}

{ #category : 'tests' }
UnitTest >> testFightKnightlvl2vsWarriorlvl3Hill [
	| warrior1 knight1 terrain1 combat|
	knight1 := Knight new initializeWithExperience: 2.
	warrior1 := Warrior new initializeWithExperience: 3.
	terrain1 := HillyTerrain new.
	combat := Combat new.
	combat battle:knight1 against: warrior1 on: terrain1 .
   self assert: warrior1 health equals: 20.
   self assert: knight1 health equals: 60.
]

{ #category : 'tests' }
UnitTest >> testFightWarriorlvl1 [
	| warrior1 warrior2 terrain1 combat|
	warrior1 := Warrior new.
	warrior2 := Warrior new.
	terrain1 := FlatTerrain new.
	combat := Combat new.
	combat battle:warrior1 against: warrior2 on: terrain1 .
   self assert: warrior1 health equals: 90.
   self assert: warrior2 health equals: 90.
]
