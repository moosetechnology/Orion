Class {
	#name : 'ORActionMoveTPrimitiveType',
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
ORActionMoveTPrimitiveType >> createVersionnedEntitySelector [

	^ #newPrimitiveType
]

{ #category : 'accessing' }
ORActionMoveTPrimitiveType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveTPrimitiveType >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveTPrimitiveType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTPrimitiveType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionMoveTPrimitiveType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionMoveTPrimitiveType >> typeContainer: aValue [ typeContainer := aValue
]
