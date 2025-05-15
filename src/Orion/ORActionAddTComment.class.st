"
I add a new FamixTComment in an OrionModel.
I need the following property :
- `commentedEntity`
"
Class {
	#name : 'ORActionAddTComment',
	#superclass : 'ORActionAdd',
	#instVars : [
		'commentedEntity'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTComment >> commentedEntity [ 
	^commentedEntity 
]

{ #category : 'accessing' }
ORActionAddTComment >> commentedEntity: aValue [
	commentedEntity := aValue 
]

{ #category : 'method execution' }
ORActionAddTComment >> run [
	| newComment |
	newComment := self orionModel newComment.

	self setFamixProperty: #commentedEntity on: newComment to: self commentedEntity.

	newComment resetMooseName.
	entity := newComment .
	^entity
]
