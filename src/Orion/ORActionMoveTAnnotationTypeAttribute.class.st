"
I move a new FamixTAnnotationTypeAttribute in a MooseModel
I need the following properties of the new annotationtypeattribute

-`parentType`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionMoveTAnnotationTypeAttribute',
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
ORActionMoveTAnnotationTypeAttribute >> createVersionnedEntitySelector [

	^ #newAnnotationTypeAttribute
]

{ #category : 'accessing' }
ORActionMoveTAnnotationTypeAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionMoveTAnnotationTypeAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionMoveTAnnotationTypeAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveTAnnotationTypeAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveTAnnotationTypeAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionMoveTAnnotationTypeAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'accessing' }
ORActionMoveTAnnotationTypeAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTAnnotationTypeAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
