Class {
	#name : 'ORActionRemoveTInheritance',
	#superclass : 'ORActionRemove',
	#instVars : [
		'subclass',
		'superclass',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTInheritance >> createVersionnedEntitySelector [

	^ #newInheritance
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionRemoveTInheritance >> run [

	self setFamixProperty: #subclass on: entity to: nil. self setFamixProperty: #superclass on: entity to: nil. self setFamixProperty: #next on: entity to: nil. self setFamixProperty: #previous on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> subclass [ ^subclass
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> subclass: aValue [ subclass := aValue
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> superclass [ ^superclass
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> superclass: aValue [ superclass := aValue
]
