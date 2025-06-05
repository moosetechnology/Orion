Class {
	#name : 'ORActionRemoveTReference',
	#superclass : 'ORActionRemove',
	#instVars : [
		'referencer',
		'referredEntity',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTReference >> createVersionnedEntitySelector [

	^ #newReference
]

{ #category : 'accessing' }
ORActionRemoveTReference >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveTReference >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveTReference >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveTReference >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionRemoveTReference >> referencer [ ^referencer
]

{ #category : 'accessing' }
ORActionRemoveTReference >> referencer: aValue [ referencer := aValue
]

{ #category : 'accessing' }
ORActionRemoveTReference >> referredEntity [ ^referredEntity
]

{ #category : 'accessing' }
ORActionRemoveTReference >> referredEntity: aValue [ referredEntity := aValue
]

{ #category : 'method execution' }
ORActionRemoveTReference >> run [

	self setFamixProperty: #referencer on: entity to: nil. self setFamixProperty: #referredEntity on: entity to: nil. self setFamixProperty: #next on: entity to: nil. self setFamixProperty: #previous on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTReference >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTReference >> sourceAnchor: aValue [ sourceAnchor := aValue
]
