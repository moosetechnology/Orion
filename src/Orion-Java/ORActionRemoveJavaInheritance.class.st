"
I remove a FamixJavaInheritance in a MooseModel
I need the following properties of the  inheritance

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`subclass`
-`superclass`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveJavaInheritance',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'subclass',
		'superclass',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveJavaInheritance >> createVersionnedEntitySelector [ ^ #newInheritance
]

{ #category : 'accessing' }
ORActionRemoveJavaInheritance >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveJavaInheritance >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInheritance >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveJavaInheritance >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaInheritance >> run [

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
ORActionRemoveJavaInheritance >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaInheritance >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInheritance >> subclass [ ^subclass
]

{ #category : 'accessing' }
ORActionRemoveJavaInheritance >> subclass: aValue [ subclass := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInheritance >> superclass [ ^superclass
]

{ #category : 'accessing' }
ORActionRemoveJavaInheritance >> superclass: aValue [ superclass := aValue
]
