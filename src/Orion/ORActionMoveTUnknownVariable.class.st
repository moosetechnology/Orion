Class {
	#name : 'ORActionMoveTUnknownVariable',
	#superclass : 'ORActionMoveNamedEntity',
	#instVars : [
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionMoveTUnknownVariable >> createVersionnedEntitySelector [

	^ #newUnknownVariable
]

{ #category : 'accessing' }
ORActionMoveTUnknownVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionMoveTUnknownVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionMoveTUnknownVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveTUnknownVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveTUnknownVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTUnknownVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
