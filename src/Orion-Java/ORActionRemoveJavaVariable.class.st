"
I remove a FamixJavaVariable in a MooseModel
I need the following properties of the  variable

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`annotationInstances`
-`receivingInvocations`
"
Class {
	#name : 'ORActionRemoveJavaVariable',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'sourceAnchor',
		'annotationInstances',
		'receivingInvocations'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaVariable >> createVersionnedEntitySelector [ ^ #newVariable
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaVariable >> run [

	super run.
	entity sourceAnchor: nil.
	entity annotationInstances: nil.
	entity receivingInvocations: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
