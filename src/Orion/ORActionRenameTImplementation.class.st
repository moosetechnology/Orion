Class {
	#name : 'ORActionRenameTImplementation',
	#superclass : 'ORActionRename',
	#instVars : [
		'implementingClass',
		'interface',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRenameTImplementation >> createVersionnedEntitySelector [

	^ #newImplementation
]

{ #category : 'accessing' }
ORActionRenameTImplementation >> implementingClass [ ^implementingClass
]

{ #category : 'accessing' }
ORActionRenameTImplementation >> implementingClass: aValue [ implementingClass := aValue
]

{ #category : 'accessing' }
ORActionRenameTImplementation >> interface [ ^interface
]

{ #category : 'accessing' }
ORActionRenameTImplementation >> interface: aValue [ interface := aValue
]

{ #category : 'accessing' }
ORActionRenameTImplementation >> next [ ^next
]

{ #category : 'accessing' }
ORActionRenameTImplementation >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRenameTImplementation >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRenameTImplementation >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionRenameTImplementation >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTImplementation >> sourceAnchor: aValue [ sourceAnchor := aValue
]
