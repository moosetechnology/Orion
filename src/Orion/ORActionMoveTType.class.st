"
I move a new FamixTType in a MooseModel
I need the following properties of the new type

-`typeContainer`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionMoveTType',
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
ORActionMoveTType >> createVersionnedEntitySelector [

	^ #newType
]

{ #category : 'accessing' }
ORActionMoveTType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveTType >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveTType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionMoveTType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionMoveTType >> typeContainer: aValue [ typeContainer := aValue
]
