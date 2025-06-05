Class {
	#name : 'ORActionMoveTParameterConcretization',
	#superclass : 'ORActionMove',
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
ORActionMoveTParameterConcretization >> concreteParameter [ ^concreteParameter
]

{ #category : 'accessing' }
ORActionMoveTParameterConcretization >> concreteParameter: aValue [ concreteParameter := aValue
]

{ #category : 'method execution' }
ORActionMoveTParameterConcretization >> createVersionnedEntitySelector [

	^ #newParameterConcretization
]

{ #category : 'accessing' }
ORActionMoveTParameterConcretization >> genericParameter [ ^genericParameter
]

{ #category : 'accessing' }
ORActionMoveTParameterConcretization >> genericParameter: aValue [ genericParameter := aValue
]

{ #category : 'accessing' }
ORActionMoveTParameterConcretization >> next [ ^next
]

{ #category : 'accessing' }
ORActionMoveTParameterConcretization >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionMoveTParameterConcretization >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionMoveTParameterConcretization >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionMoveTParameterConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTParameterConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]
