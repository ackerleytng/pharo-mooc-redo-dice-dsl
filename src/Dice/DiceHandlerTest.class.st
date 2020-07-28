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
DiceHandlerTest >> testCountFaces [
	| h |
	h := DiceHandler count: 2 faces: 50.
	self assert: h diceNumber equals: 2.
	self assert: h maxValue equals: 100
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
DiceHandlerTest >> testNewSyntaxArbitraryDNumber [
	| h |
	h := 3 D500.
	self assert: h diceNumber equals: 3.
	self assert: h maxValue equals: 1500
]

{ #category : #tests }
DiceHandlerTest >> testNewSyntaxWrong [
	self should: [ 3 DXXX ] raise: Exception.
	self should: [ 3 D0 ] raise: Exception.
	self should: [ 3 something ] raise: Exception.
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
