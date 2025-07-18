"
I add a FamixJavaVariable in a MooseModel
I need the following properties of the  variable

-`sourceAnchor`
-`annotationInstances`
-`receivingInvocations`
"
Class {
	#name : 'ORActionAddJavaVariable',
	#superclass : 'ORActionAddNamedEntityJava',
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
ORActionAddJavaVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'method execution' }
ORActionAddJavaVariable >> createVersionnedEntitySelector [ 

	^#newVariable
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaVariable >> run [

	super run.
	entity sourceAnchor: self sourceAnchor.
	self annotationInstances
		ifNotNil: [entity annotationInstances: self annotationInstances ].
	self receivingInvocations 
		ifNotNil: [entity receivingInvocations: self receivingInvocations ].

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
