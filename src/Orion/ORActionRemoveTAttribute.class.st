Class {
	#name : 'ORActionRemoveTAttribute',
	#superclass : 'ORActionRemoveNamedEntity',
	#instVars : [
		'parentType',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTAttribute >> createVersionnedEntitySelector [

	^ #newAttribute
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAttribute >> run [

	self setFamixProperty: #parentType on: entity to: nil. self setFamixProperty: #isStub on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil. self setFamixProperty: #declaredType on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
