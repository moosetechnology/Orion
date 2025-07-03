"
I remove a FamixTLocalVariable in a MooseModel
I need the following properties of the  localvariable

-`parentBehaviouralEntity`
-`incomingAccesses`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionRemoveTLocalVariable',
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
ORActionRemoveTLocalVariable class >> createVersionnedEntitySelector [ ^ #newLocalVariable
]

{ #category : 'method execution' }
ORActionRemoveTLocalVariable class >> run [
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
ORActionRemoveTLocalVariable >> createVersionnedEntitySelector [ ^ #newLocalVariable
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'method execution' }
ORActionRemoveTLocalVariable >> run [

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
ORActionRemoveTLocalVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTLocalVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
