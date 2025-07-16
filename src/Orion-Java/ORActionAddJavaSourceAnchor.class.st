"
I add a FamixJavaSourceAnchor in a MooseModel
I need the following properties of the  sourceanchor

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`element`
"
Class {
	#name : 'ORActionAddJavaSourceAnchor',
	#superclass : 'ORActionAddJava',
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
ORActionAddJavaSourceAnchor >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaSourceAnchor >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaSourceAnchor >> element [ ^element
]

{ #category : 'accessing' }
ORActionAddJavaSourceAnchor >> element: aValue [ element := aValue
]

{ #category : 'accessing' }
ORActionAddJavaSourceAnchor >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaSourceAnchor >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaSourceAnchor >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaSourceAnchor >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaSourceAnchor >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaSourceAnchor >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaSourceAnchor >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaSourceAnchor >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionAddJavaSourceAnchor >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity element: self element.

	^entity.
]
