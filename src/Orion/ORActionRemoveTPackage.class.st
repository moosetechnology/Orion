"
I remove a new FamixTPackage in a MooseModel
I need the following properties of the new package

-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveTPackage',
	#superclass : 'ORActionRemoveNamedEntity',
	#instVars : [
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTPackage >> createVersionnedEntitySelector [

	^ #newPackage
]

{ #category : 'accessing' }
ORActionRemoveTPackage >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTPackage >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionRemoveTPackage >> run [

	self setFamixProperty: #isStub on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTPackage >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTPackage >> sourceAnchor: aValue [ sourceAnchor := aValue
]
