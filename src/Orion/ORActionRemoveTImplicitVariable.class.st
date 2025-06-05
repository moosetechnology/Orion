Class {
	#name : 'ORActionRemoveTImplicitVariable',
	#superclass : 'ORActionRemoveNamedEntity',
	#instVars : [
		'parentBehaviouralEntity',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTImplicitVariable >> createVersionnedEntitySelector [

	^ #newImplicitVariable
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'method execution' }
ORActionRemoveTImplicitVariable >> run [

	self setFamixProperty: #parentBehaviouralEntity on: entity to: nil. self setFamixProperty: #isStub on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil. self setFamixProperty: #declaredType on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTImplicitVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
