Class {
	#name : 'ORActionAddTParameterConcretization',
	#superclass : 'ORActionAdd',
	#instVars : [
		'concretizations',
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

{ #category : 'method execution' }
ORActionAddTParameterConcretization class >> run [
	super run.
	entity concretizations: self concretizations.
	entity genericParameter: self genericParameter.
	entity concreteParameter: self concreteParameter.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> concreteParameter [ ^concreteParameter
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> concreteParameter: aValue [ concreteParameter := aValue
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> concretizations [ ^concretizations
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> concretizations: aValue [ concretizations := aValue
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> genericParameter [ ^genericParameter
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> genericParameter: aValue [ genericParameter := aValue
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionAddTParameterConcretization >> run [
	super run.
	entity concretizations: self concretizations.
	entity genericParameter: self genericParameter.
	entity concreteParameter: self concreteParameter.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]
