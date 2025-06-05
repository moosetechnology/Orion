Class {
	#name : 'ORActionMoveTImplicitVariable',
	#superclass : 'ORActionMoveNamedEntity',
	#instVars : [
		'parentBehaviouralEntity',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionMoveTImplicitVariable >> createVersionnedEntitySelector [

	^ #newImplicitVariable
]

{ #category : 'accessing' }
ORActionMoveTImplicitVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionMoveTImplicitVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionMoveTImplicitVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveTImplicitVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveTImplicitVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionMoveTImplicitVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionMoveTImplicitVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTImplicitVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
