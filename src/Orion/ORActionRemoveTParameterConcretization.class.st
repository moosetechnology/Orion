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

{ #category : 'method execution' }
ORActionRemoveTParameterConcretization >> createVersionnedEntitySelector [

	^ #newParameterConcretization
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

	self setFamixProperty: #genericParameter on: entity to: nil. self setFamixProperty: #concreteParameter on: entity to: nil. self setFamixProperty: #next on: entity to: nil. self setFamixProperty: #previous on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTParameterConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTParameterConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]
