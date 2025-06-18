"
I remove a new FamixTImport in a MooseModel
I need the following properties of the new import

-`importedEntity`
-`importingEntity`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveTImport',
	#superclass : 'ORActionRemove',
	#instVars : [
		'importedEntity',
		'importingEntity',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTImport >> createVersionnedEntitySelector [

	^ #newImport
]

{ #category : 'accessing' }
ORActionRemoveTImport >> importedEntity [ ^importedEntity
]

{ #category : 'accessing' }
ORActionRemoveTImport >> importedEntity: aValue [ importedEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveTImport >> importingEntity [ ^importingEntity
]

{ #category : 'accessing' }
ORActionRemoveTImport >> importingEntity: aValue [ importingEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveTImport >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveTImport >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveTImport >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveTImport >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionRemoveTImport >> run [

	self setFamixProperty: #importedEntity on: entity to: nil. self setFamixProperty: #importingEntity on: entity to: nil. self setFamixProperty: #next on: entity to: nil. self setFamixProperty: #previous on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTImport >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTImport >> sourceAnchor: aValue [ sourceAnchor := aValue
]
