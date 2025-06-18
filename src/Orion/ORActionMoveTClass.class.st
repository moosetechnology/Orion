"
I move a new FamixTClass in a MooseModel
I need the following properties of the new class

-`typeContainer`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionMoveTClass',
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
ORActionMoveTClass >> createVersionnedEntitySelector [

	^ #newClass
]

{ #category : 'accessing' }
ORActionMoveTClass >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveTClass >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveTClass >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTClass >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionMoveTClass >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionMoveTClass >> typeContainer: aValue [ typeContainer := aValue
]
