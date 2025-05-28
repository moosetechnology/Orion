Class {
	#name : 'ORActionAddTComment',
	#superclass : 'ORActionAdd',
	#instVars : [
		'commentedEntity',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTComment >> commentedEntity [ ^commentedEntity
]

{ #category : 'accessing' }
ORActionAddTComment >> commentedEntity: aValue [ commentedEntity := aValue
]

{ #category : 'method execution' }
ORActionAddTComment >> run [

	| newEntity |
	newEntity := self orionModel newComment.

	self setFamixProperty: #commentedEntity on: newEntity to: self commentedEntity. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTComment >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTComment >> sourceAnchor: aValue [ sourceAnchor := aValue
]
