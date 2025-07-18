"
I am the superclass of all Orion actions that moves an entity or an association in a Java model
"
Class {
	#name : 'ORActionMoveJava',
	#superclass : 'ORActionMove',
	#instVars : [
		'parentType'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJava >> parentType [

	^ parentType
]

{ #category : 'accessing' }
ORActionMoveJava >> parentType: anObject [

	parentType := anObject
]

{ #category : 'method execution' }
ORActionMoveJava >> run [

	| newEntity |
	newEntity := self setFamixProperty: #parentType on: self entity to: self to.

	newEntity resetMooseName.

	^ newEntity
]
