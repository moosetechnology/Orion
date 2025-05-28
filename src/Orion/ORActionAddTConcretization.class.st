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

	| newEntity |
	newEntity := self orionModel newConcretization.

	self setFamixProperty: #parameterConcretizations on: newEntity to: self parameterConcretizations. self setFamixProperty: #parameterConcretizations on: newEntity to: self parameterConcretizations. self setFamixProperty: #genericEntity on: newEntity to: self genericEntity. self setFamixProperty: #concreteEntity on: newEntity to: self concreteEntity. self setFamixProperty: #next on: newEntity to: self next. self setFamixProperty: #previous on: newEntity to: self previous. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]
