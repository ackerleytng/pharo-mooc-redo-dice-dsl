"
I'm a simple die

To create a die, use
	
	Die faces: 20
"
Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #'instance creation' }
Die class >> faces: anInteger [ 
	^ self new faces: anInteger 
]

{ #category : #accessing }
Die >> faces [
	^ faces
]

{ #category : #accessing }
Die >> faces: anInteger [
	faces := anInteger
]

{ #category : #initialization }
Die >> initialize [ 
	super initialize.
	faces := 6
]

{ #category : #operations }
Die >> roll [
	^ faces atRandom 
]
