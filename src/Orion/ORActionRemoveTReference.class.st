"
I remove a FamixTReference in a MooseModel
I need the following properties of the  reference

-`referencer`
-`referredEntity`
-`next`
-`previous`
-`sourceAnchor`
"
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
ORActionRemoveTReference class >> createVersionnedEntitySelector [ ^ #newReference
]

{ #category : 'method execution' }
ORActionRemoveTReference class >> run [
	super run.
	entity referencer: nil.
	entity referredEntity: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'method execution' }
ORActionRemoveTReference >> createVersionnedEntitySelector [ ^ #newReference
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

	super run.
	entity referencer: nil.
	entity referredEntity: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTReference >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTReference >> sourceAnchor: aValue [ sourceAnchor := aValue
]
