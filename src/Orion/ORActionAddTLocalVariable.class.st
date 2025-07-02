Class {
	#name : 'ORActionAddTLocalVariable',
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
ORActionAddTLocalVariable class >> createVersionnedEntitySelector [ ^ #newLocalVariable
]

{ #category : 'method execution' }
ORActionAddTLocalVariable class >> run [
	super run.
	entity parentBehaviouralEntity: self parentBehaviouralEntity.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity declaredType: self declaredType.
	^entity.
]

{ #category : 'method execution' }
ORActionAddTLocalVariable >> createVersionnedEntitySelector [ ^ #newLocalVariable
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'method execution' }
ORActionAddTLocalVariable >> run [
	super run.
	entity parentBehaviouralEntity: self parentBehaviouralEntity.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity declaredType: self declaredType.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTLocalVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
