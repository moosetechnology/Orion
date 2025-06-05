Class {
	#name : 'ORActionRemoveTEnum',
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
ORActionRemoveTEnum >> createVersionnedEntitySelector [

	^ #newEnum
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionRemoveTEnum >> run [

	self setFamixProperty: #typeContainer on: entity to: nil. self setFamixProperty: #isStub on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveTEnum >> typeContainer: aValue [ typeContainer := aValue
]
