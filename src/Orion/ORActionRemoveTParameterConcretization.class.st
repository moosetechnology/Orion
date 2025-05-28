Class {
	#name : 'ORActionRemoveTParameterConcretization',
	#superclass : 'ORActionRemove',
	#instVars : [
		'genericParameter',
		'concreteParameter',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveTParameterConcretization >> concreteParameter [ ^concreteParameter
]

{ #category : 'accessing' }
ORActionRemoveTParameterConcretization >> concreteParameter: aValue [ concreteParameter := aValue
]

{ #category : 'accessing' }
ORActionRemoveTParameterConcretization >> concretizations [ ^concretizations
]

{ #category : 'accessing' }
ORActionRemoveTParameterConcretization >> concretizations: aValue [ concretizations := aValue
]

{ #category : 'accessing' }
ORActionRemoveTParameterConcretization >> genericParameter [ ^genericParameter
]

{ #category : 'accessing' }
ORActionRemoveTParameterConcretization >> genericParameter: aValue [ genericParameter := aValue
]

{ #category : 'accessing' }
ORActionRemoveTParameterConcretization >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveTParameterConcretization >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveTParameterConcretization >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveTParameterConcretization >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionRemoveTParameterConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTParameterConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]
