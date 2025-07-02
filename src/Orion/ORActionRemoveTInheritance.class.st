"
I remove a new FamixTInheritance in a MooseModel
I need the following properties of the new inheritance

-`subclass`
-`superclass`
-`next`
-`previous`
-`sourceAnchor`
"
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
ORActionRemoveTInheritance class >> createVersionnedEntitySelector [ ^ #newInheritance
]

{ #category : 'method execution' }
ORActionRemoveTInheritance class >> run [
	super run.
	entity subclass: nil.
	entity superclass: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'method execution' }
ORActionRemoveTInheritance >> createVersionnedEntitySelector [ ^ #newInheritance
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
	super run.
	entity subclass: nil.
	entity superclass: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.
	self orionModel remove: (self orionModel versionLookup: self entity).
	^entity.
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
