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

{ #category : 'accessing' }
ORActionRemoveTAccess >> accessor [ ^accessor
]

{ #category : 'accessing' }
ORActionRemoveTAccess >> accessor: aValue [ accessor := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAccess >> createVersionnedEntitySelector [

	^ #newAccess
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

	self setFamixProperty: #accessor on: entity to: nil. self setFamixProperty: #isWrite on: entity to: nil. self setFamixProperty: #variable on: entity to: nil. self setFamixProperty: #next on: entity to: nil. self setFamixProperty: #previous on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
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
