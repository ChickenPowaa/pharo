Class {
	#name : 'Combat',
	#superclass : 'Object',
	#category : 'Civilisation',
	#package : 'Civilisation'
}

{ #category : 'as yet unclassified' }
Combat >> battle: attacker against: defender on: terrain [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"
	| Dd Ad Atm Dtm attackerDamage defenderDamage defenseTerrain|
	attackerDamage := attacker attackPower.
	defenderDamage := defender defensePower.
	"Calcul des dommages infligés au défenseur"
	Atm := self combinationModifierForAtck: attacker against: defender.
	defenseTerrain := self multiTerrain: attacker on:terrain.
	defenseTerrain := defenseTerrain * terrain defendingTerrainImpact.
	Dd := (attackerDamage  * Atm) + defenseTerrain.
	defender takeDamage: Dd.
	
	Dtm := self combinationModifierForDef: attacker against: defender.
	Ad:= (defenderDamage * Dtm) + terrain atackingTerrainImpact. 
	attacker takeDamage: Ad.
]

{ #category : 'as yet unclassified' }
Combat >> combinationModifierForAtck: attacker against: defender [ 
        "Calcule le modificateur de type d'unité. À ajuster selon les relations"
        ((attacker isKindOf: Knight) and: [defender isKindOf: Archer]) ifTrue: [^ 2].
        ((attacker isKindOf: Knight) and: [defender isKindOf: Knight]) ifTrue: [^ 2].
        ((attacker isKindOf: Knight) and: [defender isKindOf: Warrior]) ifTrue: [^ 2].
        ^ 1 "Par défaut, pas de modificateur"
    
]

{ #category : 'as yet unclassified' }
Combat >> combinationModifierForDef: attacker against: defender [ 
        "Calcule le modificateur de type d'unité. À ajuster selon les relations"
        ((attacker isKindOf: Knight) and: [defender isKindOf: Pikeman]) ifTrue: [^ 2].
        ^ 1 "Par défaut, pas de modificateur"
    
]

{ #category : 'as yet unclassified' }
Combat >> multiTerrain: attacker on: terrain [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"
	 ((attacker isKindOf: Knight) and: [terrain isKindOf: HillyTerrain ]) ifTrue: [^ 2].
]
