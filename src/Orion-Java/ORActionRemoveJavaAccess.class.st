"
I remove a FamixJavaAccess in a MooseModel
I need the following properties of the  access

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`accessor`
-`isWrite`
-`variable`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveJavaAccess',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'accessor',
		'isWrite',
		'variable',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> accessor [ ^accessor
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> accessor: aValue [ accessor := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaAccess >> createVersionnedEntitySelector [ ^ #newAccess
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> isWrite [ ^isWrite
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> isWrite: aValue [ isWrite := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaAccess >> run [

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
ORActionRemoveJavaAccess >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> variable [ ^variable
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> variable: aValue [ variable := aValue
]
