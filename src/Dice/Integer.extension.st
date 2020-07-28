Extension { #name : #Integer }

{ #category : #'*Dice' }
Integer >> D: aNumberOfFaces [
	DiceHandler count: self faces: aNumberOfFaces 
]

{ #category : #'*Dice' }
Integer >> doesNotUnderstand: aMessage [
	| s |
	s := aMessage selector.
	(s isUnary and: [ (s beginsWith: 'D') and: [ s extractNumber > 0 ] ])
		ifTrue: [ ^ DiceHandler count: self faces: s extractNumber ].
		
	^ super doesNotUnderstand: aMessage 
]
