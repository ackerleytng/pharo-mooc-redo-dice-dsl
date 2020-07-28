Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieTest >> testInitializeIsOk [
	Die new
]

{ #category : #tests }
DieTest >> testRolling [
	| d |
	d := Die new.
	1000 timesRepeat: [ self assert: (d roll between: 1 and: 6) ]
]
