"
I remove a FamixJavaParameter in a MooseModel
I need the following properties of the  parameter

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`annotationInstances`
-`receivingInvocations`
-`isFinal`
-`parentBehaviouralEntity`
-`incomingAccesses`
-`isStub`
-`declaredType`
-`comments`
"
Class {
	#name : 'ORActionRemoveJavaParameter',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'sourceAnchor',
		'annotationInstances',
		'receivingInvocations',
		'isFinal',
		'parentBehaviouralEntity',
		'incomingAccesses',
		'isStub',
		'declaredType',
		'comments'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaParameter >> createVersionnedEntitySelector [ ^ #newParameter
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaParameter >> run [

	super run.
	entity sourceAnchor: nil.
	entity annotationInstances: nil.
	entity receivingInvocations: nil.
	entity isFinal: nil.
	entity parentBehaviouralEntity: nil.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity declaredType: nil.
	entity comments: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaParameter >> sourceAnchor: aValue [ sourceAnchor := aValue
]
