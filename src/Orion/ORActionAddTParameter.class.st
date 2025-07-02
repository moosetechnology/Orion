Class {
	#name : 'ORActionAddTParameter',
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
ORActionAddTParameter class >> createVersionnedEntitySelector [ ^ #newParameter
]

{ #category : 'method execution' }
ORActionAddTParameter class >> run [
	super run.
	entity parentBehaviouralEntity: self parentBehaviouralEntity.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity declaredType: self declaredType.
	^entity.
]

{ #category : 'method execution' }
ORActionAddTParameter >> createVersionnedEntitySelector [ ^ #newParameter
]

{ #category : 'accessing' }
ORActionAddTParameter >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTParameter >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTParameter >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionAddTParameter >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionAddTParameter >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTParameter >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTParameter >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionAddTParameter >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'method execution' }
ORActionAddTParameter >> run [
	super run.
	entity parentBehaviouralEntity: self parentBehaviouralEntity.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity declaredType: self declaredType.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTParameter >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTParameter >> sourceAnchor: aValue [ sourceAnchor := aValue
]
