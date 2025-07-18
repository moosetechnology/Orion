"
I remove a FamixJavaImplicitVariable in a MooseModel
I need the following properties of the  implicitvariable

-`sourceAnchor`
-`annotationInstances`
-`receivingInvocations`
-`parentBehaviouralEntity`
-`incomingAccesses`
-`isStub`
-`declaredType`
"
Class {
	#name : 'ORActionRemoveJavaImplicitVariable',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'sourceAnchor',
		'annotationInstances',
		'receivingInvocations',
		'parentBehaviouralEntity',
		'incomingAccesses',
		'isStub',
		'declaredType'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaImplicitVariable >> run [

	super run.
	entity sourceAnchor: nil.
	entity annotationInstances: nil.
	entity receivingInvocations: nil.
	entity parentBehaviouralEntity: nil.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity declaredType: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
