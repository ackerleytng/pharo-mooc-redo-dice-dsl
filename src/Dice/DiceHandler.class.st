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
