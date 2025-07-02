Class {
	#name : 'ORActionAddTImplicitVariable',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'parentBehaviouralEntity',
		'incomingAccesses',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTImplicitVariable class >> createVersionnedEntitySelector [ ^ #newImplicitVariable
]

{ #category : 'method execution' }
ORActionAddTImplicitVariable class >> run [
	super run.
	entity parentBehaviouralEntity: self parentBehaviouralEntity.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity declaredType: self declaredType.
	^entity.
]

{ #category : 'method execution' }
ORActionAddTImplicitVariable >> createVersionnedEntitySelector [ ^ #newImplicitVariable
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'method execution' }
ORActionAddTImplicitVariable >> run [
	super run.
	entity parentBehaviouralEntity: self parentBehaviouralEntity.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity declaredType: self declaredType.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
