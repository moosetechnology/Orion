"
I move a new FamixJavaAnnotationInstance in a MooseModel
I need the following properties of the new annotationinstance

-`sourceAnchor`
"
Class {
	#name : 'ORActionMoveJavaAnnotationInstance',
	#superclass : 'ORActionMoveTAnnotationInstance',
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
ORActionMoveJavaAnnotationInstance >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaAnnotationInstance >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationInstance >> sourceAnchor: aValue [ sourceAnchor := aValue
]
