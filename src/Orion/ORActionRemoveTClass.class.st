"
I remove a new FamixTClass in a MooseModel
I need the following properties of the new class

-`typeContainer`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveTClass',
	#superclass : 'ORActionRemoveNamedEntity',
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
ORActionRemoveTClass >> createVersionnedEntitySelector [

	^ #newClass
]

{ #category : 'accessing' }
ORActionRemoveTClass >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTClass >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionRemoveTClass >> run [

	self setFamixProperty: #typeContainer on: entity to: nil. self setFamixProperty: #isStub on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTClass >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTClass >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveTClass >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveTClass >> typeContainer: aValue [ typeContainer := aValue
]
