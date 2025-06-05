Class {
	#name : 'ORActionRenameTAccess',
	#superclass : 'ORActionRename',
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
ORActionRenameTAccess >> accessor [ ^accessor
]

{ #category : 'accessing' }
ORActionRenameTAccess >> accessor: aValue [ accessor := aValue
]

{ #category : 'method execution' }
ORActionRenameTAccess >> createVersionnedEntitySelector [

	^ #newAccess
]

{ #category : 'accessing' }
ORActionRenameTAccess >> isWrite [ ^isWrite
]

{ #category : 'accessing' }
ORActionRenameTAccess >> isWrite: aValue [ isWrite := aValue
]

{ #category : 'accessing' }
ORActionRenameTAccess >> next [ ^next
]

{ #category : 'accessing' }
ORActionRenameTAccess >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRenameTAccess >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRenameTAccess >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionRenameTAccess >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTAccess >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRenameTAccess >> variable [ ^variable
]

{ #category : 'accessing' }
ORActionRenameTAccess >> variable: aValue [ variable := aValue
]
