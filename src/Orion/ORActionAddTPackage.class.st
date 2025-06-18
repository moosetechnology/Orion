"
I add a new FamixTPackage in a MooseModel
I need the following properties of the new package

-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddTPackage',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTPackage >> createVersionnedEntitySelector [

	^ #newPackage
]

{ #category : 'accessing' }
ORActionAddTPackage >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTPackage >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionAddTPackage >> run [

	super run.

	self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTPackage >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTPackage >> sourceAnchor: aValue [ sourceAnchor := aValue
]
