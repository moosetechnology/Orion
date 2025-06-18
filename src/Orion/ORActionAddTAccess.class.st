"
I add a new FamixTAccess in a MooseModel
I need the following properties of the new access

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

{ #category : 'accessing' }
ORActionAddTAccess >> accessor [ ^accessor
]

{ #category : 'accessing' }
ORActionAddTAccess >> accessor: aValue [ accessor := aValue
]

{ #category : 'method execution' }
ORActionAddTAccess >> createVersionnedEntitySelector [

	^ #newAccess
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

	self setFamixProperty: #accessor on: newEntity to: self accessor. self setFamixProperty: #isWrite on: newEntity to: self isWrite. self setFamixProperty: #variable on: newEntity to: self variable. self setFamixProperty: #next on: newEntity to: self next. self setFamixProperty: #previous on: newEntity to: self previous. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
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
