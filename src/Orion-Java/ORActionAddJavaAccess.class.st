"
I add a FamixJavaAccess in a MooseModel
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
	#name : 'ORActionAddJavaAccess',
	#superclass : 'ORActionAddJava',
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
ORActionAddJavaAccess >> accessor [ ^accessor
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> accessor: aValue [ accessor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> isWrite [ ^isWrite
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> isWrite: aValue [ isWrite := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionAddJavaAccess >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity accessor: self accessor.
	entity isWrite: self isWrite.
	entity variable: self variable.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> variable [ ^variable
]

{ #category : 'accessing' }
ORActionAddJavaAccess >> variable: aValue [ variable := aValue
]
