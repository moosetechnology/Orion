"
I remove a new FamixTException in a MooseModel
I need the following properties of the new exception

-`typeContainer`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveTException',
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
ORActionRemoveTException >> createVersionnedEntitySelector [

	^ #newException
]

{ #category : 'accessing' }
ORActionRemoveTException >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTException >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionRemoveTException >> run [

	self setFamixProperty: #typeContainer on: entity to: nil. self setFamixProperty: #isStub on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTException >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTException >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveTException >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveTException >> typeContainer: aValue [ typeContainer := aValue
]
