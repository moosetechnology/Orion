"
I remove a FamixTEnumValue in a MooseModel
I need the following properties of the  enumvalue

-`parentEnum`
-`incomingAccesses`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionRemoveTEnumValue',
	#superclass : 'ORActionRemoveNamedEntity',
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
ORActionRemoveTEnumValue class >> createVersionnedEntitySelector [ ^ #newEnumValue
]

{ #category : 'method execution' }
ORActionRemoveTEnumValue class >> run [
	super run.
	entity parentEnum: nil.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity declaredType: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'method execution' }
ORActionRemoveTEnumValue >> createVersionnedEntitySelector [ ^ #newEnumValue
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> parentEnum [ ^parentEnum
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> parentEnum: aValue [ parentEnum := aValue
]

{ #category : 'method execution' }
ORActionRemoveTEnumValue >> run [

	super run.
	entity parentEnum: nil.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity declaredType: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> sourceAnchor: aValue [ sourceAnchor := aValue
]
