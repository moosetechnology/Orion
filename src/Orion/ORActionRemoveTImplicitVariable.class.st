"
I remove a FamixTImplicitVariable in a MooseModel
I need the following properties of the  implicitvariable

-`parentBehaviouralEntity`
-`incomingAccesses`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionRemoveTImplicitVariable',
	#superclass : 'ORActionRemoveNamedEntity',
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
ORActionRemoveTImplicitVariable class >> createVersionnedEntitySelector [ ^ #newImplicitVariable
]

{ #category : 'method execution' }
ORActionRemoveTImplicitVariable class >> run [
	super run.
	entity parentBehaviouralEntity: nil.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity declaredType: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'method execution' }
ORActionRemoveTImplicitVariable >> createVersionnedEntitySelector [ ^ #newImplicitVariable
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'method execution' }
ORActionRemoveTImplicitVariable >> run [

	super run.
	entity parentBehaviouralEntity: nil.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity declaredType: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
