"
I rename a new FamixJavaAnnotationTypeAttribute in a MooseModel
I need the following properties of the new annotationtypeattribute

-`annotationInstances`
-`receivingInvocations`
-`comments`
"
Class {
	#name : 'ORActionRenameJavaAnnotationTypeAttribute',
	#superclass : 'ORActionRenameTAnnotationTypeAttribute',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel'
	],
	#category : 'Orion-Java-Rename',
	#package : 'Orion-Java',
	#tag : 'Rename'
}

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionRenameJavaAnnotationTypeAttribute >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRenameJavaAnnotationTypeAttribute >> receivingInvocations: aValue [ receivingInvocations := aValue
]
