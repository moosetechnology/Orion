Class {
	#name : 'ORActionRemoveTType',
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
ORActionRemoveTType >> createVersionnedEntitySelector [

	^ #newType
]

{ #category : 'accessing' }
ORActionRemoveTType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTType >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionRemoveTType >> run [

	self setFamixProperty: #typeContainer on: entity to: nil. self setFamixProperty: #isStub on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveTType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveTType >> typeContainer: aValue [ typeContainer := aValue
]
