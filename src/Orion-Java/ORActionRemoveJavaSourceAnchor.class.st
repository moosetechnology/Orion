"
I remove a FamixJavaSourceAnchor in a MooseModel
I need the following properties of the  sourceanchor

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`element`
"
Class {
	#name : 'ORActionRemoveJavaSourceAnchor',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'element'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaSourceAnchor >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceAnchor >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaSourceAnchor >> createVersionnedEntitySelector [ ^ #newSourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceAnchor >> element [ ^element
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceAnchor >> element: aValue [ element := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceAnchor >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceAnchor >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceAnchor >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceAnchor >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceAnchor >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceAnchor >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceAnchor >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceAnchor >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaSourceAnchor >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
	entity element: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]
