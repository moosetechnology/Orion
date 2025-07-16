"
I add a FamixJavaReference in a MooseModel
I need the following properties of the  reference

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`referencer`
-`referredEntity`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddJavaReference',
	#superclass : 'ORActionAddJava',
	#instVars : [
		'referencer',
		'referredEntity',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddJavaReference >> createVersionnedEntitySelector [

	^#newReference 
]

{ #category : 'accessing' }
ORActionAddJavaReference >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddJavaReference >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddJavaReference >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddJavaReference >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionAddJavaReference >> referencer [ ^referencer
]

{ #category : 'accessing' }
ORActionAddJavaReference >> referencer: aValue [ referencer := aValue
]

{ #category : 'accessing' }
ORActionAddJavaReference >> referredEntity [ ^referredEntity
]

{ #category : 'accessing' }
ORActionAddJavaReference >> referredEntity: aValue [ referredEntity := aValue
]

{ #category : 'method execution' }
ORActionAddJavaReference >> run [

	super run.
	entity referencer: self referencer.
	entity referredEntity: self referredEntity.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaReference >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaReference >> sourceAnchor: aValue [ sourceAnchor := aValue
]
