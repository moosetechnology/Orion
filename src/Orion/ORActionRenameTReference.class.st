Class {
	#name : 'ORActionRenameTReference',
	#superclass : 'ORActionRename',
	#instVars : [
		'referencer',
		'referredEntity',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRenameTReference >> createVersionnedEntitySelector [

	^ #newReference
]

{ #category : 'accessing' }
ORActionRenameTReference >> next [ ^next
]

{ #category : 'accessing' }
ORActionRenameTReference >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRenameTReference >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRenameTReference >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionRenameTReference >> referencer [ ^referencer
]

{ #category : 'accessing' }
ORActionRenameTReference >> referencer: aValue [ referencer := aValue
]

{ #category : 'accessing' }
ORActionRenameTReference >> referredEntity [ ^referredEntity
]

{ #category : 'accessing' }
ORActionRenameTReference >> referredEntity: aValue [ referredEntity := aValue
]

{ #category : 'accessing' }
ORActionRenameTReference >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTReference >> sourceAnchor: aValue [ sourceAnchor := aValue
]
