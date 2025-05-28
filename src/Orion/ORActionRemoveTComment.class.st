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

{ #category : 'accessing' }
ORActionRemoveTComment >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTComment >> sourceAnchor: aValue [ sourceAnchor := aValue
]
