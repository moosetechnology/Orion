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

{ #category : 'method execution' }
ORActionRemoveTConcretization >> createVersionnedEntitySelector [

	^ #newConcretization
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
ORActionRemoveTConcretization >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionRemoveTConcretization >> run [

	self setFamixProperty: #genericEntity on: entity to: nil. self setFamixProperty: #concreteEntity on: entity to: nil. self setFamixProperty: #next on: entity to: nil. self setFamixProperty: #previous on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]
