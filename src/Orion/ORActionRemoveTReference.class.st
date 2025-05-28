Class {
	#name : 'ORActionRemoveTReference',
	#superclass : 'ORActionRemove',
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

{ #category : 'accessing' }
ORActionRemoveTReference >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveTReference >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveTReference >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveTReference >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionRemoveTReference >> referencer [ ^referencer
]

{ #category : 'accessing' }
ORActionRemoveTReference >> referencer: aValue [ referencer := aValue
]

{ #category : 'accessing' }
ORActionRemoveTReference >> referredEntity [ ^referredEntity
]

{ #category : 'accessing' }
ORActionRemoveTReference >> referredEntity: aValue [ referredEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveTReference >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTReference >> sourceAnchor: aValue [ sourceAnchor := aValue
]
