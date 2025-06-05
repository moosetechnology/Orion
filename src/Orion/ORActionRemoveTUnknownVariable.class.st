Class {
	#name : 'ORActionRemoveTUnknownVariable',
	#superclass : 'ORActionRemoveNamedEntity',
	#instVars : [
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTUnknownVariable >> createVersionnedEntitySelector [

	^ #newUnknownVariable
]

{ #category : 'accessing' }
ORActionRemoveTUnknownVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTUnknownVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTUnknownVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTUnknownVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionRemoveTUnknownVariable >> run [

	self setFamixProperty: #isStub on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil. self setFamixProperty: #declaredType on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTUnknownVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTUnknownVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
