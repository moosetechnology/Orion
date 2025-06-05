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

{ #category : 'accessing' }
ORActionRemoveTComment >> commentedEntity [ ^commentedEntity
]

{ #category : 'accessing' }
ORActionRemoveTComment >> commentedEntity: aValue [ commentedEntity := aValue
]

{ #category : 'method execution' }
ORActionRemoveTComment >> createVersionnedEntitySelector [

	^ #newComment
]

{ #category : 'method execution' }
ORActionRemoveTComment >> run [

	self setFamixProperty: #commentedEntity on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTComment >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTComment >> sourceAnchor: aValue [ sourceAnchor := aValue
]
