"
I add a FamixJavaSourceTextAnchor in a MooseModel
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
	#name : 'ORActionAddJavaSourceTextAnchor',
	#superclass : 'ORActionAdd',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'element',
		'source'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> element [ ^element
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> element: aValue [ element := aValue
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionAddJavaSourceTextAnchor >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity element: self element.
	entity source: self source.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> source [ ^source
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> source: aValue [ source := aValue
]
