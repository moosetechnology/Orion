"
I rename a new FamixJavaParameter in a MooseModel
I need the following properties of the new parameter

-`annotationInstances`
-`receivingInvocations`
-`isFinal`
-`comments`
"
Class {
	#name : 'ORActionRenameJavaParameter',
	#superclass : 'ORActionRenameTParameter',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'isFinal',
		'comments'
	],
	#category : 'Orion-Java-Rename',
	#package : 'Orion-Java',
	#tag : 'Rename'
}

{ #category : 'accessing' }
ORActionRenameJavaParameter >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> receivingInvocations: aValue [ receivingInvocations := aValue
]
