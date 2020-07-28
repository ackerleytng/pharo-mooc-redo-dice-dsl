Extension { #name : #Integer }

{ #category : #'*Dice' }
Integer >> D10 [
	^ self D: 10
]

{ #category : #'*Dice' }
Integer >> D2 [
	^ self D: 2
]

{ #category : #'*Dice' }
Integer >> D20 [
	^ self D: 20
]

{ #category : #'*Dice' }
Integer >> D6 [
	^ self D: 6
]

{ #category : #'*Dice' }
Integer >> D: aNumberOfFaces [
	| handler |
	handler := DiceHandler new.
	self timesRepeat: [ handler addDie: (Die faces: aNumberOfFaces) ].
	^ handler
]
