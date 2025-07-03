"
I remove a FamixTUnknownVariable in a MooseModel
I need the following properties of the  unknownvariable

-`incomingAccesses`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionRemoveTUnknownVariable',
	#superclass : 'ORActionRemoveNamedEntity',
	#instVars : [
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
ORActionRemoveTUnknownVariable class >> createVersionnedEntitySelector [ ^ #newUnknownVariable
]

{ #category : 'method execution' }
ORActionRemoveTUnknownVariable class >> run [
	super run.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity declaredType: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'method execution' }
ORActionRemoveTUnknownVariable >> createVersionnedEntitySelector [ ^ #newUnknownVariable
]

{ #category : 'accessing' }
ORActionRemoveTUnknownVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTUnknownVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTUnknownVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveTUnknownVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveTUnknownVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTUnknownVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionRemoveTUnknownVariable >> run [

	super run.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity declaredType: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTUnknownVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTUnknownVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
