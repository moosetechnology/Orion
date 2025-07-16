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
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
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

{ #category : 'accessing' }
ORActionAddJavaReference >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaReference >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaReference >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaReference >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaReference >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaReference >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaReference >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaReference >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaReference >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaReference >> mooseName: aValue [ mooseName := aValue
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
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
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
