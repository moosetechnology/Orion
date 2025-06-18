"
I move a new FamixTAttribute in a MooseModel
I need the following properties of the new attribute

-`parentType`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionMoveTAttribute',
	#superclass : 'ORActionMoveNamedEntity',
	#instVars : [
		'parentType',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionMoveTAttribute >> createVersionnedEntitySelector [

	^ #newAttribute
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
