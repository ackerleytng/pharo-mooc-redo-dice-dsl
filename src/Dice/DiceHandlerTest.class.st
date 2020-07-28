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
DiceHandlerTest >> testAddingHandlers [
	| h |
	h := 2 D20 + 3 D6.
	self assert: h diceNumber equals: 5.
	self assert: h maxValue equals: 58
]

{ #category : #tests }
DiceHandlerTest >> testAddingTheSameDieTwice [
	| h |
	h := DiceHandler new
		addDie: (Die faces: 6);
		addDie: (Die faces: 6); yourself.
		
	self assert: h diceNumber equals: 2
]

{ #category : #tests }
DiceHandlerTest >> testMaxValue [
	| h |
	h := DiceHandler new
		addDie: (Die faces: 6);
		addDie: (Die faces: 6); yourself.
		
	self assert: h maxValue equals: 12
]

{ #category : #tests }
DiceHandlerTest >> testNewSyntax [
	| h |
	h := 3 D6.
	self assert: h diceNumber equals: 3.
	self assert: h maxValue equals: 18
]

{ #category : #tests }
DiceHandlerTest >> testRoll [
	| h |
	h := DiceHandler new 
		addDie: (Die faces: 6);
		addDie: (Die faces: 10);
		yourself.
		
	1000 timesRepeat: [
		self assert: (h roll between: 1 and: h maxValue)
	]
]
