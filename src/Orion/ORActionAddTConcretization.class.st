"
I add a FamixTConcretization in a MooseModel
I need the following properties of the  concretization

-`parameterConcretizations`
-`genericEntity`
-`concreteEntity`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddTConcretization',
	#superclass : 'ORActionAdd',
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
ORActionAddTConcretization class >> run [
	super run.
	entity parameterConcretizations: self parameterConcretizations.
	entity genericEntity: self genericEntity.
	entity concreteEntity: self concreteEntity.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTConcretization >> concreteEntity [ ^concreteEntity
]

{ #category : 'accessing' }
ORActionAddTConcretization >> concreteEntity: aValue [ concreteEntity := aValue
]

{ #category : 'accessing' }
ORActionAddTConcretization >> genericEntity [ ^genericEntity
]

{ #category : 'accessing' }
ORActionAddTConcretization >> genericEntity: aValue [ genericEntity := aValue
]

{ #category : 'accessing' }
ORActionAddTConcretization >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddTConcretization >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddTConcretization >> parameterConcretizations [ ^parameterConcretizations
]

{ #category : 'accessing' }
ORActionAddTConcretization >> parameterConcretizations: aValue [ parameterConcretizations := aValue
]

{ #category : 'accessing' }
ORActionAddTConcretization >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddTConcretization >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionAddTConcretization >> run [

	super run.
	entity parameterConcretizations: self parameterConcretizations.
	entity genericEntity: self genericEntity.
	entity concreteEntity: self concreteEntity.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.

	^entity.
]

{ #category : 'accessing' }
ORActionAddTConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]
