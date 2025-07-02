"
I remove a new FamixTPackage in a MooseModel
I need the following properties of the new package

-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveTPackage',
	#superclass : 'ORActionRemoveNamedEntity',
	#instVars : [
		'childEntities',
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTPackage class >> createVersionnedEntitySelector [ ^ #newPackage
]

{ #category : 'method execution' }
ORActionRemoveTPackage class >> run [
	super run.
	entity childEntities: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTPackage >> childEntities [ ^childEntities
]

{ #category : 'accessing' }
ORActionRemoveTPackage >> childEntities: aValue [ childEntities := aValue
]

{ #category : 'method execution' }
ORActionRemoveTPackage >> createVersionnedEntitySelector [ ^ #newPackage
]

{ #category : 'accessing' }
ORActionRemoveTPackage >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTPackage >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionRemoveTPackage >> run [
	super run.
	entity childEntities: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	self orionModel remove: (self orionModel versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTPackage >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTPackage >> sourceAnchor: aValue [ sourceAnchor := aValue
]
