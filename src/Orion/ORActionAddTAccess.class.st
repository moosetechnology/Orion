"
I add a FamixTAccess in a MooseModel
I need the following properties of the  access

-`accessor`
-`isWrite`
-`variable`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddTAccess',
	#superclass : 'ORActionAdd',
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
ORActionAddTAccess class >> run [
	super run.
	entity accessor: self accessor.
	entity isWrite: self isWrite.
	entity variable: self variable.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTAccess >> accessor [ ^accessor
]

{ #category : 'accessing' }
ORActionAddTAccess >> accessor: aValue [ accessor := aValue
]

{ #category : 'accessing' }
ORActionAddTAccess >> isWrite [ ^isWrite
]

{ #category : 'accessing' }
ORActionAddTAccess >> isWrite: aValue [ isWrite := aValue
]

{ #category : 'accessing' }
ORActionAddTAccess >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddTAccess >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddTAccess >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddTAccess >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionAddTAccess >> run [

	super run.
	entity accessor: self accessor.
	entity isWrite: self isWrite.
	entity variable: self variable.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.

	^entity.
]

{ #category : 'accessing' }
ORActionAddTAccess >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTAccess >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddTAccess >> variable [ ^variable
]

{ #category : 'accessing' }
ORActionAddTAccess >> variable: aValue [ variable := aValue
]
