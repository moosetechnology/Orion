"
I remove a FamixTComment in a MooseModel
I need the following properties of the  comment

-`commentedEntity`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveTComment',
	#superclass : 'ORActionRemove',
	#instVars : [
		'commentedEntity',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTComment class >> createVersionnedEntitySelector [ ^ #newComment
]

{ #category : 'method execution' }
ORActionRemoveTComment class >> run [
	super run.
	entity commentedEntity: nil.
	entity sourceAnchor: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTComment >> commentedEntity [ ^commentedEntity
]

{ #category : 'accessing' }
ORActionRemoveTComment >> commentedEntity: aValue [ commentedEntity := aValue
]

{ #category : 'method execution' }
ORActionRemoveTComment >> createVersionnedEntitySelector [ ^ #newComment
]

{ #category : 'method execution' }
ORActionRemoveTComment >> run [

	super run.
	entity commentedEntity: nil.
	entity sourceAnchor: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTComment >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTComment >> sourceAnchor: aValue [ sourceAnchor := aValue
]
