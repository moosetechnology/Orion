"
I remove a FamixJavaUnknownVariable in a MooseModel
I need the following properties of the  unknownvariable

-`sourceAnchor`
-`annotationInstances`
-`receivingInvocations`
-`incomingAccesses`
-`isStub`
-`declaredType`
"
Class {
	#name : 'ORActionRemoveJavaUnknownVariable',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'sourceAnchor',
		'annotationInstances',
		'receivingInvocations',
		'incomingAccesses',
		'isStub',
		'declaredType'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaUnknownVariable >> run [

	super run.
	entity sourceAnchor: nil.
	entity annotationInstances: nil.
	entity receivingInvocations: nil.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity declaredType: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
