Class {
	#name : #DiceHandler,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #adding }
DiceHandler >> addDie: aDie [ 
	dice add: aDie
	
]

{ #category : #accessing }
DiceHandler >> diceNumber [
	^ dice size
]

{ #category : #initialization }
DiceHandler >> initialize [ 
	super initialize.
	dice := OrderedCollection new
]

{ #category : #operations }
DiceHandler >> maxValue [
	^ (dice collect: [ :each | each faces ]) sum
]

{ #category : #operations }
DiceHandler >> roll [ 
	| res |
	res := 0.
	dice do: [ :each | res := res + each roll ].
	^ res
]
