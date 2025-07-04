"
I remove a FamixJavaImplementation in a MooseModel
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
	#name : 'ORActionRemoveJavaImplementation',
	#superclass : 'ORActionRemove',
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
	#category : 'Orion-Java-Remove',
	#package : 'Orion-Java',
	#tag : 'Remove'
}

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaImplementation >> createVersionnedEntitySelector [ ^ #newImplementation
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> implementingClass [ ^implementingClass
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> implementingClass: aValue [ implementingClass := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> interface [ ^interface
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> interface: aValue [ interface := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaImplementation >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
	entity implementingClass: nil.
	entity interface: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaImplementation >> sourceAnchor: aValue [ sourceAnchor := aValue
]
