"
I move a new FamixTException in a MooseModel
I need the following properties of the new exception

-`typeContainer`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionMoveTException',
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
ORActionMoveTException >> createVersionnedEntitySelector [

	^ #newException
]

{ #category : 'accessing' }
ORActionMoveTException >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveTException >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveTException >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTException >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionMoveTException >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionMoveTException >> typeContainer: aValue [ typeContainer := aValue
]
