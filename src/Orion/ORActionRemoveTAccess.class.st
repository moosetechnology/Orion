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
