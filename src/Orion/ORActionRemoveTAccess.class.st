"
I remove a new FamixTAccess in a MooseModel
I need the following properties of the new access

-`accessor`
-`isWrite`
-`variable`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveTAccess',
	#superclass : 'ORActionRemove',
	#instVars : [
		'accessor',
		'isWrite',
		'variable',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTAccess class >> createVersionnedEntitySelector [ ^ #newAccess
]

{ #category : 'method execution' }
ORActionRemoveTAccess class >> run [
	super run.
	entity accessor: nil.
	entity isWrite: nil.
	entity variable: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTAccess >> accessor [ ^accessor
]

{ #category : 'accessing' }
ORActionRemoveTAccess >> accessor: aValue [ accessor := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAccess >> createVersionnedEntitySelector [ ^ #newAccess
]

{ #category : 'accessing' }
ORActionRemoveTAccess >> isWrite [ ^isWrite
]

{ #category : 'accessing' }
ORActionRemoveTAccess >> isWrite: aValue [ isWrite := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAccess >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveTAccess >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAccess >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveTAccess >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAccess >> run [
	super run.
	entity accessor: nil.
	entity isWrite: nil.
	entity variable: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.
	self orionModel remove: (self orionModel versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTAccess >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTAccess >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAccess >> variable [ ^variable
]

{ #category : 'accessing' }
ORActionRemoveTAccess >> variable: aValue [ variable := aValue
]
