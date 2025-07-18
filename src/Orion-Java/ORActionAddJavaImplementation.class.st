"
I add a FamixJavaImplementation in a MooseModel
I need the following properties of the  implementation

-`implementingClass`
-`interface`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddJavaImplementation',
	#superclass : 'ORActionAddJava',
	#instVars : [
		'implementingClass',
		'interface',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddJavaImplementation >> createVersionnedEntitySelector [

	^#newImplementation 
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> implementingClass [ ^implementingClass
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> implementingClass: aValue [ implementingClass := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> interface [ ^interface
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> interface: aValue [ interface := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionAddJavaImplementation >> run [

	super run.
	entity implementingClass: self implementingClass.
	entity interface: self interface.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> sourceAnchor: aValue [ sourceAnchor := aValue
]
