Class {
	#name : 'Fleet',
	#superclass : 'Object',
	#instVars : [
		'ships',
		'fleetMap'
	],
	#classInstVars : [
		'ships'
	],
	#category : 'SpaceGame',
	#package : 'SpaceGame'
}

{ #category : 'instance creation' }
Fleet class >> newWithShips: ships [ 
        ^ self new initializeWithShips: ships.
    

]

{ #category : 'adding' }
Fleet >> addShip: aShip [ 
        ships add: aShip.
]

{ #category : 'as yet unclassified' }
Fleet >> engage: enemyFleet in: region [
    | attackerDamage defenderDamage round attackerMultiplier defenderMultiplier |
    round := 1.

    "Définir les multiplicateurs par défaut"
    attackerMultiplier := 1.0.
    defenderMultiplier := 1.0.

    "Définir les multiplicateurs de dégâts selon la région et le type de vaisseau"
    (region isKindOf: InhabitedSolarSystem) ifTrue: [
        "Pas de changement de multiplicateurs"
        attackerMultiplier := 1.0.
        defenderMultiplier := 1.0.
    ].
    
    (region isKindOf: AsteroidField) ifTrue: [
        "Champ d'astéroïdes : ajuster les multiplicateurs par type de vaisseau"
        self ships do: [:ship |
            (ship isKindOf: Fighter) ifTrue: [
                attackerMultiplier := 1.0.  "Pas de pénalité pour les Fighters dans les astéroïdes"
            ].
            (ship isKindOf: Cruiser) ifTrue: [
                attackerMultiplier := 0.5.  "Les Cruisers infligent -50% de dégâts"
                defenderMultiplier := 1.75. "Les Cruisers subissent +75% de dégâts"
            ].
            ((ship isKindOf: Destroyer) or: [ship isKindOf: Battlecruiser]) ifTrue: [
                attackerMultiplier := 0.1.  "Les Destroyers et Battlecruisers infligent -90% de dégâts"
            ].
        ].
    ].

    (region isKindOf: Nebula) ifTrue: [
        "Nébuleuse : malus de précision"
        self ships do: [:ship |
            (ship isKindOf: Fighter) ifTrue: [ attackerMultiplier := 0.9 ].   "Fighters infligent -10% de dégâts"
            (ship isKindOf: Cruiser) ifTrue: [ attackerMultiplier := 0.8 ].   "Cruisers infligent -20% de dégâts"
            (ship isKindOf: Destroyer) ifTrue: [ attackerMultiplier := 0.75 ]."Destroyers infligent -25% de dégâts"
            (ship isKindOf: Battlecruiser) ifTrue: [ attackerMultiplier := 0.7 ].
        ].
    ].

    (region isKindOf: DeepSpace) ifTrue: [
        "Espace profond : malus d'efficacité des boucliers"
        self ships do: [:ship |
            (ship isKindOf: Fighter) ifTrue: [ defenderMultiplier := 1.0 ]. "Pas de malus pour les Fighters"
            (ship isKindOf: Cruiser) ifTrue: [ defenderMultiplier := 1.2 ]. "Les Cruisers prennent +20% de dégâts"
            (ship isKindOf: Destroyer) ifTrue: [ defenderMultiplier := 1.3 ]. "Les Destroyers prennent +30% de dégâts"
            (ship isKindOf: Battlecruiser) ifTrue: [ defenderMultiplier := 1.4 ]. "Les Battlecruisers prennent +40% de dégâts"
        ].
    ].

    "Boucle de combat, jusqu'à 6 tours ou jusqu'à ce qu'un des vaisseaux soit détruit"
    [round <= 6 and: [self isDestroyed not and: [enemyFleet isDestroyed not]]] whileTrue: [

        "Calcul des dégâts pour l'attaquant"
        attackerDamage := (self fireDamage) * attackerMultiplier.
        
        "Calcul des dégâts pour le défenseur"
        defenderDamage := (enemyFleet fireDamage) * defenderMultiplier.

        "Appliquer les dégâts"
        enemyFleet takeDamage: attackerDamage.
        self takeDamage: defenderDamage.
        
        round := round + 1.
    ].

]

{ #category : 'as yet unclassified' }
Fleet >> fireDamage [ 
  | damageCollection |
    
    "Créer une collection des dommages de chaque vaisseau"
    damageCollection := ships collect: [ :ship | ship damage ].
    
    "Calculer la somme des dommages"
    ^ damageCollection sum.
    
]

{ #category : 'initialization' }
Fleet >> initialize [ 
        ships := OrderedCollection new.

    
]

{ #category : 'accessing' }
Fleet >> isDestroyed [  
	^ ships isEmpty 
]

{ #category : 'testing' }
Fleet >> isEmpty [
    "Retourne vrai si la flotte ne contient aucun vaisseau."
    ^ ships isEmpty.
]

{ #category : 'accessing' }
Fleet >> regionAt: aPosition [ 
        | region |
        "Récupérer la région de la carte des flottes"
        region := fleetMap at: aPosition ifAbsent: [nil].
        ^ region.
    
]

{ #category : 'accessing' }
Fleet >> ships [ 
 ^ ships 

]

{ #category : 'as yet unclassified' }
Fleet >> takeDamage: initialDamage [ 
    | remainingDamage |  "Variable temporaire pour les dégâts restants"
    
    remainingDamage := initialDamage.
    
    "Trier les vaisseaux de manière aléatoire"
    ships := ships sort: [ :a :b | (Random new next) < 0.5 ].
    
    "Appliquer les dégâts aux vaisseaux dans l'ordre"
    ships do: [ :ship |
        remainingDamage := ship absorbDamage: remainingDamage.
        remainingDamage > 0 ifFalse: [ ^ self ].  "Si pas de dégâts restants, arrêter"
    ].
    
    "Retirer les vaisseaux détruits de la flotte"
    ships := ships reject: [ :ship | ship isDestroyed ].

]
