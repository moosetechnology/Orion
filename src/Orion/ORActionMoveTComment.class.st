Class {
	#name : 'ORActionMoveTComment',
	#superclass : 'ORActionMove',
	#instVars : [
		'commentedEntity',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveTComment >> commentedEntity [ ^commentedEntity
]

{ #category : 'accessing' }
ORActionMoveTComment >> commentedEntity: aValue [ commentedEntity := aValue
]

{ #category : 'accessing' }
ORActionMoveTComment >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTComment >> sourceAnchor: aValue [ sourceAnchor := aValue
]
