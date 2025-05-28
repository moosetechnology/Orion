Class {
	#name : 'ORActionAddNamedEntity',
	#superclass : 'ORActionAdd',
	#instVars : [
		'name'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionAddNamedEntity class >> isAbstract [

	^ self == ORActionAddNamedEntity
]
