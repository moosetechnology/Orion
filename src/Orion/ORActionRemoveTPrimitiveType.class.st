Class {
	#name : 'ORActionRemoveTPrimitiveType',
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
ORActionRemoveTPrimitiveType >> createVersionnedEntitySelector [

	^ #newPrimitiveType
]

{ #category : 'accessing' }
ORActionRemoveTPrimitiveType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTPrimitiveType >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionRemoveTPrimitiveType >> run [

	self setFamixProperty: #typeContainer on: entity to: nil. self setFamixProperty: #isStub on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTPrimitiveType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTPrimitiveType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveTPrimitiveType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveTPrimitiveType >> typeContainer: aValue [ typeContainer := aValue
]
