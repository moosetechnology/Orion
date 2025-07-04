"
I move a new FamixJavaAnnotationTypeAttribute in a MooseModel
I need the following properties of the new annotationtypeattribute

-`annotationInstances`
-`receivingInvocations`
-`comments`
"
Class {
	#name : 'ORActionMoveJavaAnnotationTypeAttribute',
	#superclass : 'ORActionMoveTAnnotationTypeAttribute',
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
ORActionMoveJavaAnnotationTypeAttribute >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaAnnotationTypeAttribute >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> receivingInvocations: aValue [ receivingInvocations := aValue
]
