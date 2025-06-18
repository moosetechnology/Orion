"
I rename a new FamixJavaLocalVariable in a MooseModel
I need the following properties of the new localvariable

-`annotationInstances`
-`receivingInvocations`
-`isFinal`
-`comments`
"
Class {
	#name : 'ORActionRenameJavaLocalVariable',
	#superclass : 'ORActionRenameTLocalVariable',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'isFinal',
		'comments'
	],
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]
