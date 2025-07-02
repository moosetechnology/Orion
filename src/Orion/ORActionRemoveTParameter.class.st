"
I remove a new FamixTParameter in a MooseModel
I need the following properties of the new parameter

-`parentBehaviouralEntity`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionRemoveTParameter',
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
ORActionRemoveTParameter class >> createVersionnedEntitySelector [ ^ #newParameter
]

{ #category : 'method execution' }
ORActionRemoveTParameter class >> run [
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
ORActionRemoveTParameter >> createVersionnedEntitySelector [ ^ #newParameter
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'method execution' }
ORActionRemoveTParameter >> run [
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
ORActionRemoveTParameter >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTParameter >> sourceAnchor: aValue [ sourceAnchor := aValue
]
