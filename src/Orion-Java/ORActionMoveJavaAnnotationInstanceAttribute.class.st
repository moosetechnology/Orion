"
I move a new FamixJavaAnnotationInstanceAttribute in a MooseModel
I need the following properties of the new annotationinstanceattribute

-`sourceAnchor`
"
Class {
	#name : 'ORActionMoveJavaAnnotationInstanceAttribute',
	#superclass : 'ORActionMoveTAnnotationInstanceAttribute',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel'
	],
	#category : 'Orion-Java-Move',
	#package : 'Orion-Java',
	#tag : 'Move'
}

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaAnnotationInstanceAttribute >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstanceAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
