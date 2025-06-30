"
I remove a new FamixJavaLocalVariable in a MooseModel
I need the following properties of the new localvariable

-`annotationInstances`
-`receivingInvocations`
-`isFinal`
-`comments`
"
Class {
	#name : 'ORActionRemoveJavaLocalVariable',
	#superclass : 'ORActionRemoveTLocalVariable',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'isFinal',
		'comments'
	],
	#category : 'Orion-Java-Remove',
	#package : 'Orion-Java',
	#tag : 'Remove'
}

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaLocalVariable >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]
