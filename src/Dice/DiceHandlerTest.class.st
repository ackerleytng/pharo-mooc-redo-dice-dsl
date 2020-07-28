Class {
	#name : #DiceHandlerTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DiceHandlerTest >> testAdding [
	| h |
	h := DiceHandler new
		addDie: (Die faces: 6);
		addDie: (Die faces: 10); yourself.
		
	self assert: h diceNumber equals: 2
]

{ #category : #tests }
DiceHandlerTest >> testAddingTheSameDieTwice [
	| h |
	h := DiceHandler new
		addDie: (Die faces: 6);
		addDie: (Die faces: 6); yourself.
		
	self assert: h diceNumber equals: 2
]
