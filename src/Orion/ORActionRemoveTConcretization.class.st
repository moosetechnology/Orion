"
I remove a new FamixTConcretization in a MooseModel
I need the following properties of the new concretization

-`genericEntity`
-`concreteEntity`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveTConcretization',
	#superclass : 'ORActionRemove',
	#instVars : [
		'parameterConcretizations',
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

{ #category : 'method execution' }
ORActionRemoveTConcretization class >> createVersionnedEntitySelector [ ^ #newConcretization
]

{ #category : 'method execution' }
ORActionRemoveTConcretization class >> run [
	super run.
	entity parameterConcretizations: nil.
	entity genericEntity: nil.
	entity concreteEntity: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> concreteEntity [ ^concreteEntity
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> concreteEntity: aValue [ concreteEntity := aValue
]

{ #category : 'method execution' }
ORActionRemoveTConcretization >> createVersionnedEntitySelector [ ^ #newConcretization
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

{ #category : 'method execution' }
ORActionRemoveTConcretization >> run [
	super run.
	entity parameterConcretizations: nil.
	entity genericEntity: nil.
	entity concreteEntity: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.
	self orionModel remove: (self orionModel versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]
