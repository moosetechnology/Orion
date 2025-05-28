Class {
	#name : 'ORActionRemoveNamedEntity',
	#superclass : 'ORActionRemove',
	#instVars : [
		'name'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionRemoveNamedEntity class >> isAbstract [

	^ self == ORActionRemoveNamedEntity
]
