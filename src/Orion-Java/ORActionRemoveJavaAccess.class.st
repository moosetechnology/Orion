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
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
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

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaAccess >> createVersionnedEntitySelector [ ^ #newAccess
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> isWrite [ ^isWrite
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> isWrite: aValue [ isWrite := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaAccess >> mooseName: aValue [ mooseName := aValue
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
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
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
