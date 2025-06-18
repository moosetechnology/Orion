"
I move a new FamixTamedEntity in a MooseModel
I need the following properties of the new amedentity

-`name`
"
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
