"
I move a new FamixTEnum in a MooseModel
I need the following properties of the new enum

-`typeContainer`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionMoveTEnum',
	#superclass : 'ORActionMoveNamedEntity',
	#instVars : [
		'typeContainer',
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionMoveTEnum >> createVersionnedEntitySelector [

	^ #newEnum
]

{ #category : 'accessing' }
ORActionMoveTEnum >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveTEnum >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveTEnum >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTEnum >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionMoveTEnum >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionMoveTEnum >> typeContainer: aValue [ typeContainer := aValue
]
