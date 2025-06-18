"
I move a new FamixTComment in a MooseModel
I need the following properties of the new comment

-`commentedEntity`
-`sourceAnchor`
"
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

{ #category : 'method execution' }
ORActionMoveTComment >> createVersionnedEntitySelector [

	^ #newComment
]

{ #category : 'accessing' }
ORActionMoveTComment >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTComment >> sourceAnchor: aValue [ sourceAnchor := aValue
]
