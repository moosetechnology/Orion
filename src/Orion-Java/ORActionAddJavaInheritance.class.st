"
I add a FamixJavaInheritance in a MooseModel
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
	#name : 'ORActionAddJavaInheritance',
	#superclass : 'ORActionAddJava',
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
ORActionAddJavaInheritance >> createVersionnedEntitySelector [

	^#newInheritance 
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionAddJavaInheritance >> run [

	super run.
	entity subclass: self subclass.
	entity superclass: self superclass.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> subclass [ ^subclass
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> subclass: aValue [ subclass := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> superclass [ ^superclass
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> superclass: aValue [ superclass := aValue
]
