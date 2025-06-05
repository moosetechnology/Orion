Class {
	#name : 'ORActionMoveTAccess',
	#superclass : 'ORActionMove',
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
ORActionMoveTAccess >> accessor [ ^accessor
]

{ #category : 'accessing' }
ORActionMoveTAccess >> accessor: aValue [ accessor := aValue
]

{ #category : 'method execution' }
ORActionMoveTAccess >> createVersionnedEntitySelector [

	^ #newAccess
]

{ #category : 'accessing' }
ORActionMoveTAccess >> isWrite [ ^isWrite
]

{ #category : 'accessing' }
ORActionMoveTAccess >> isWrite: aValue [ isWrite := aValue
]

{ #category : 'accessing' }
ORActionMoveTAccess >> next [ ^next
]

{ #category : 'accessing' }
ORActionMoveTAccess >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionMoveTAccess >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionMoveTAccess >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionMoveTAccess >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTAccess >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionMoveTAccess >> variable [ ^variable
]

{ #category : 'accessing' }
ORActionMoveTAccess >> variable: aValue [ variable := aValue
]
