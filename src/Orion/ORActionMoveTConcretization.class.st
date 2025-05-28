Class {
	#name : 'ORActionMoveTConcretization',
	#superclass : 'ORActionMove',
	#instVars : [
		'genericEntity',
		'concreteEntity',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveTConcretization >> concreteEntity [ ^concreteEntity
]

{ #category : 'accessing' }
ORActionMoveTConcretization >> concreteEntity: aValue [ concreteEntity := aValue
]

{ #category : 'accessing' }
ORActionMoveTConcretization >> genericEntity [ ^genericEntity
]

{ #category : 'accessing' }
ORActionMoveTConcretization >> genericEntity: aValue [ genericEntity := aValue
]

{ #category : 'accessing' }
ORActionMoveTConcretization >> next [ ^next
]

{ #category : 'accessing' }
ORActionMoveTConcretization >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionMoveTConcretization >> parameterConcretizations [ ^parameterConcretizations
]

{ #category : 'accessing' }
ORActionMoveTConcretization >> parameterConcretizations: aValue [ parameterConcretizations := aValue
]

{ #category : 'accessing' }
ORActionMoveTConcretization >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionMoveTConcretization >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionMoveTConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]
