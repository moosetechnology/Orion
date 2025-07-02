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
ORActionRemoveTImport class >> createVersionnedEntitySelector [ ^ #newImport
]

{ #category : 'method execution' }
ORActionRemoveTImport class >> run [
	super run.
	entity importedEntity: nil.
	entity importingEntity: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'method execution' }
ORActionRemoveTImport >> createVersionnedEntitySelector [ ^ #newImport
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
	super run.
	entity importedEntity: nil.
	entity importingEntity: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.
	self orionModel remove: (self orionModel versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTImport >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTImport >> sourceAnchor: aValue [ sourceAnchor := aValue
]
