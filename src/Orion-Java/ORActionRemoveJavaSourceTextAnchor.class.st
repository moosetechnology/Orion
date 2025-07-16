"
I remove a FamixJavaSourceTextAnchor in a MooseModel
I need the following properties of the  sourcetextanchor

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`element`
-`source`
"
Class {
	#name : 'ORActionRemoveJavaSourceTextAnchor',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'element',
		'source'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaSourceTextAnchor >> createVersionnedEntitySelector [ ^ #newSourceTextAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> element [ ^element
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> element: aValue [ element := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaSourceTextAnchor >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
	entity element: nil.
	entity source: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> source [ ^source
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> source: aValue [ source := aValue
]
