"
I add a new FamixTamedEntity in a MooseModel
I need the following properties of the new amedentity

-`name`
"
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

{ #category : 'accessing' }
ORActionAddNamedEntity >> name [

	^name
]

{ #category : 'accessing' }
ORActionAddNamedEntity >> name: aString [

	name := aString
]

{ #category : 'method execution' }
ORActionAddNamedEntity >> run [ 

	super run.

	entity name: self name.
	entity resetMooseName 
]
