"
I remove a new FamixTamedEntity in a MooseModel
I need the following properties of the new amedentity

-`name`
"
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
