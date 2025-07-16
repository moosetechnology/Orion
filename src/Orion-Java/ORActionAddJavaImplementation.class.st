"
I add a FamixJavaImplementation in a MooseModel
I need the following properties of the  implementation

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
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
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
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

{ #category : 'accessing' }
ORActionAddJavaImplementation >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> entityAttributes: aValue [ entityAttributes := aValue
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
ORActionAddJavaImplementation >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaImplementation >> mooseName: aValue [ mooseName := aValue
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
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
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
