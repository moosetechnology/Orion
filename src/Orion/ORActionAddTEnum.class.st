"
I add a new FamixTEnum in a MooseModel
I need the following properties of the new enum

-`typeContainer`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddTEnum',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'typeContainer',
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTEnum >> createVersionnedEntitySelector [

	^ #newEnum
]

{ #category : 'accessing' }
ORActionAddTEnum >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTEnum >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionAddTEnum >> run [

	super run.

	self setFamixProperty: #typeContainer on: newEntity to: self typeContainer. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTEnum >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTEnum >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddTEnum >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddTEnum >> typeContainer: aValue [ typeContainer := aValue
]
