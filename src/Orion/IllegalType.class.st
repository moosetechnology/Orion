Class {
	#name : 'IllegalType',
	#superclass : 'Error',
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'as yet unclassified' }
IllegalType class >> check: anEntity useTrait: aTrait [

	(anEntity usesFamixTrait: aTrait)
		ifFalse: [ self signal: 'Argument should be of type ' , aTrait name ]
]
