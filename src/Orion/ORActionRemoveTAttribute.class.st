"
I remove a FamixTAttribute in a MooseModel
I need the following properties of the  attribute

-`parentType`
-`incomingAccesses`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionRemoveTAttribute',
	#superclass : 'ORActionRemoveNamedEntity',
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
ORActionRemoveTAttribute class >> createVersionnedEntitySelector [ ^ #newAttribute
]

{ #category : 'method execution' }
ORActionRemoveTAttribute class >> run [
	super run.
	entity parentType: nil.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity declaredType: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'method execution' }
ORActionRemoveTAttribute >> createVersionnedEntitySelector [ ^ #newAttribute
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAttribute >> run [

	super run.
	entity parentType: nil.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity declaredType: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
