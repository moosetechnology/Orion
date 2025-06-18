"
I add a new FamixTClass in a MooseModel
I need the following properties of the new class

-`typeContainer`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddTClass',
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
ORActionAddTClass >> createVersionnedEntitySelector [

	^ #newClass
]

{ #category : 'accessing' }
ORActionAddTClass >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTClass >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionAddTClass >> run [

	super run.

	self setFamixProperty: #typeContainer on: newEntity to: self typeContainer. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTClass >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTClass >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddTClass >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddTClass >> typeContainer: aValue [ typeContainer := aValue
]
