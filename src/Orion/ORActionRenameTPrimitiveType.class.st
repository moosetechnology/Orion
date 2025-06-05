Class {
	#name : 'ORActionRenameTPrimitiveType',
	#superclass : 'ORActionRenameNamedEntity',
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
ORActionRenameTPrimitiveType >> createVersionnedEntitySelector [

	^ #newPrimitiveType
]

{ #category : 'accessing' }
ORActionRenameTPrimitiveType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTPrimitiveType >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTPrimitiveType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTPrimitiveType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRenameTPrimitiveType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRenameTPrimitiveType >> typeContainer: aValue [ typeContainer := aValue
]
