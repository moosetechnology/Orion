Class {
	#name : 'ORActionRemoveTImplementation',
	#superclass : 'ORActionRemove',
	#instVars : [
		'implementingClass',
		'interface',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTImplementation >> createVersionnedEntitySelector [

	^ #newImplementation
]

{ #category : 'accessing' }
ORActionRemoveTImplementation >> implementingClass [ ^implementingClass
]

{ #category : 'accessing' }
ORActionRemoveTImplementation >> implementingClass: aValue [ implementingClass := aValue
]

{ #category : 'accessing' }
ORActionRemoveTImplementation >> interface [ ^interface
]

{ #category : 'accessing' }
ORActionRemoveTImplementation >> interface: aValue [ interface := aValue
]

{ #category : 'accessing' }
ORActionRemoveTImplementation >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveTImplementation >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveTImplementation >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveTImplementation >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionRemoveTImplementation >> run [

	self setFamixProperty: #implementingClass on: entity to: nil. self setFamixProperty: #interface on: entity to: nil. self setFamixProperty: #next on: entity to: nil. self setFamixProperty: #previous on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTImplementation >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTImplementation >> sourceAnchor: aValue [ sourceAnchor := aValue
]
