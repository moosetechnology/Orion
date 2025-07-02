"
I remove a new FamixTParameterConcretization in a MooseModel
I need the following properties of the new parameterconcretization

-`genericParameter`
-`concreteParameter`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveTParameterConcretization',
	#superclass : 'ORActionRemove',
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
ORActionRemoveTParameterConcretization class >> createVersionnedEntitySelector [ ^ #newParameterConcretization
]

{ #category : 'method execution' }
ORActionRemoveTParameterConcretization class >> run [
	super run.
	entity concretizations: nil.
	entity genericParameter: nil.
	entity concreteParameter: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

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

{ #category : 'method execution' }
ORActionRemoveTParameterConcretization >> createVersionnedEntitySelector [ ^ #newParameterConcretization
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

{ #category : 'method execution' }
ORActionRemoveTParameterConcretization >> run [
	super run.
	entity concretizations: nil.
	entity genericParameter: nil.
	entity concreteParameter: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.
	self orionModel remove: (self orionModel versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTParameterConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTParameterConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]
