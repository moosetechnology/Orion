"
I add a FamixTAttribute in a MooseModel
I need the following properties of the  attribute

-`parentType`
-`incomingAccesses`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionAddTAttribute',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'parentType',
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
ORActionAddTAttribute class >> createVersionnedEntitySelector [ ^ #newAttribute
]

{ #category : 'method execution' }
ORActionAddTAttribute class >> run [
	super run.
	entity parentType: self parentType.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity declaredType: self declaredType.
	^entity.
]

{ #category : 'method execution' }
ORActionAddTAttribute >> createVersionnedEntitySelector [ ^ #newAttribute
]

{ #category : 'accessing' }
ORActionAddTAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTAttribute >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionAddTAttribute >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionAddTAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionAddTAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'method execution' }
ORActionAddTAttribute >> run [

	super run.
	entity parentType: self parentType.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity declaredType: self declaredType.

	^entity.
]

{ #category : 'accessing' }
ORActionAddTAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
