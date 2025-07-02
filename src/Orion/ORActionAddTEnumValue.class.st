Class {
	#name : 'ORActionAddTEnumValue',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'parentEnum',
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
ORActionAddTEnumValue class >> createVersionnedEntitySelector [ ^ #newEnumValue
]

{ #category : 'method execution' }
ORActionAddTEnumValue class >> run [
	super run.
	entity parentEnum: self parentEnum.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity declaredType: self declaredType.
	^entity.
]

{ #category : 'method execution' }
ORActionAddTEnumValue >> createVersionnedEntitySelector [ ^ #newEnumValue
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> parentEnum [ ^parentEnum
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> parentEnum: aValue [ parentEnum := aValue
]

{ #category : 'method execution' }
ORActionAddTEnumValue >> run [
	super run.
	entity parentEnum: self parentEnum.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity declaredType: self declaredType.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> sourceAnchor: aValue [ sourceAnchor := aValue
]
