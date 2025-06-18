"
I add a new FamixTParameterConcretization in a MooseModel
I need the following properties of the new parameterconcretization

-`genericParameter`
-`concreteParameter`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddTParameterConcretization',
	#superclass : 'ORActionAdd',
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
ORActionAddTParameterConcretization >> concreteParameter [ ^concreteParameter
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> concreteParameter: aValue [ concreteParameter := aValue
]

{ #category : 'method execution' }
ORActionAddTParameterConcretization >> createVersionnedEntitySelector [

	^ #newParameterConcretization
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

	self setFamixProperty: #genericParameter on: newEntity to: self genericParameter. self setFamixProperty: #concreteParameter on: newEntity to: self concreteParameter. self setFamixProperty: #next on: newEntity to: self next. self setFamixProperty: #previous on: newEntity to: self previous. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]
