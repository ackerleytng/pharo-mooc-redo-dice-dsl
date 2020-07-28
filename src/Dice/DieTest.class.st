Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #'instance creation' }
DieTest class >> faces: anInteger [
	^ self new faces: anInteger
]

{ #category : #tests }
DieTest >> testBetterCreationInterface [
	self shouldnt: [ Die faces: 20 ] raise: Error
]

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
