Class {
	#name : 'ORActionRenameTComment',
	#superclass : 'ORActionRename',
	#instVars : [
		'commentedEntity',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRenameTComment >> commentedEntity [ ^commentedEntity
]

{ #category : 'accessing' }
ORActionRenameTComment >> commentedEntity: aValue [ commentedEntity := aValue
]

{ #category : 'method execution' }
ORActionRenameTComment >> createVersionnedEntitySelector [

	^ #newComment
]

{ #category : 'accessing' }
ORActionRenameTComment >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTComment >> sourceAnchor: aValue [ sourceAnchor := aValue
]
