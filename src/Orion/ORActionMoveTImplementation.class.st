"
I move a new FamixTImplementation in a MooseModel
I need the following properties of the new implementation

-`implementingClass`
-`interface`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionMoveTImplementation',
	#superclass : 'ORActionMove',
	#instVars : [
		'implementingClass',
		'interface',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionMoveTImplementation >> createVersionnedEntitySelector [

	^ #newImplementation
]

{ #category : 'accessing' }
ORActionMoveTImplementation >> implementingClass [ ^implementingClass
]

{ #category : 'accessing' }
ORActionMoveTImplementation >> implementingClass: aValue [ implementingClass := aValue
]

{ #category : 'accessing' }
ORActionMoveTImplementation >> interface [ ^interface
]

{ #category : 'accessing' }
ORActionMoveTImplementation >> interface: aValue [ interface := aValue
]

{ #category : 'accessing' }
ORActionMoveTImplementation >> next [ ^next
]

{ #category : 'accessing' }
ORActionMoveTImplementation >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionMoveTImplementation >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionMoveTImplementation >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionMoveTImplementation >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTImplementation >> sourceAnchor: aValue [ sourceAnchor := aValue
]
