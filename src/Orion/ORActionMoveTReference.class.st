Class {
	#name : 'ORActionMoveTReference',
	#superclass : 'ORActionMove',
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
ORActionMoveTReference >> createVersionnedEntitySelector [

	^ #newReference
]

{ #category : 'accessing' }
ORActionMoveTReference >> next [ ^next
]

{ #category : 'accessing' }
ORActionMoveTReference >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionMoveTReference >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionMoveTReference >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionMoveTReference >> referencer [ ^referencer
]

{ #category : 'accessing' }
ORActionMoveTReference >> referencer: aValue [ referencer := aValue
]

{ #category : 'accessing' }
ORActionMoveTReference >> referredEntity [ ^referredEntity
]

{ #category : 'accessing' }
ORActionMoveTReference >> referredEntity: aValue [ referredEntity := aValue
]

{ #category : 'accessing' }
ORActionMoveTReference >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTReference >> sourceAnchor: aValue [ sourceAnchor := aValue
]
