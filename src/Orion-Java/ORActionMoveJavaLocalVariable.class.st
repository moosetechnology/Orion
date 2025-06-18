"
I move a new FamixJavaLocalVariable in a MooseModel
I need the following properties of the new localvariable

-`annotationInstances`
-`receivingInvocations`
-`isFinal`
-`comments`
"
Class {
	#name : 'ORActionMoveJavaLocalVariable',
	#superclass : 'ORActionMoveTLocalVariable',
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
ORActionMoveJavaLocalVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]
