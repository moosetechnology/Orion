Class {
	#name : 'ORActionMoveNamedEntity',
	#superclass : 'ORActionMove',
	#instVars : [
		'name'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionMoveNamedEntity class >> isAbstract [

	^ self == ORActionMoveNamedEntity
]
