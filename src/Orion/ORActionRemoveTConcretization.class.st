Class {
	#name : 'ORActionRemoveTConcretization',
	#superclass : 'ORActionRemove',
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
ORActionRemoveTConcretization >> concreteEntity [ ^concreteEntity
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> concreteEntity: aValue [ concreteEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> genericEntity [ ^genericEntity
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> genericEntity: aValue [ genericEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> parameterConcretizations [ ^parameterConcretizations
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> parameterConcretizations: aValue [ parameterConcretizations := aValue
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]
