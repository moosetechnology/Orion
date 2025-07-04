"
I remove a FamixJavaReference in a MooseModel
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
	#name : 'ORActionRemoveJavaReference',
	#superclass : 'ORActionRemove',
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
	#category : 'Orion-Java-Remove',
	#package : 'Orion-Java',
	#tag : 'Remove'
}

{ #category : 'accessing' }
ORActionRemoveJavaReference >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaReference >> createVersionnedEntitySelector [ ^ #newReference
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> referencer [ ^referencer
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> referencer: aValue [ referencer := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> referredEntity [ ^referredEntity
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> referredEntity: aValue [ referredEntity := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaReference >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
	entity referencer: nil.
	entity referredEntity: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaReference >> sourceAnchor: aValue [ sourceAnchor := aValue
]
