"
I remove a FamixJavaAttribute in a MooseModel
I need the following properties of the  attribute

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`annotationInstances`
-`receivingInvocations`
-`isTransient`
-`isVolatile`
-`parentType`
-`incomingAccesses`
-`isStub`
-`declaredType`
-`isClassSide`
-`isFinal`
-`visibility`
-`comments`
"
Class {
	#name : 'ORActionRemoveJavaAttribute',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'sourceAnchor',
		'annotationInstances',
		'receivingInvocations',
		'isTransient',
		'isVolatile',
		'parentType',
		'incomingAccesses',
		'isStub',
		'declaredType',
		'isClassSide',
		'isFinal',
		'visibility',
		'comments'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaAttribute >> createVersionnedEntitySelector [ ^ #newAttribute
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isTransient [ ^isTransient
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isTransient: aValue [ isTransient := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isVolatile [ ^isVolatile
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isVolatile: aValue [ isVolatile := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaAttribute >> run [

	super run.
	entity sourceAnchor: nil.
	entity annotationInstances: nil.
	entity receivingInvocations: nil.
	entity isTransient: nil.
	entity isVolatile: nil.
	entity parentType: nil.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity declaredType: nil.
	entity isClassSide: nil.
	entity isFinal: nil.
	entity visibility: nil.
	entity comments: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> visibility: aValue [ visibility := aValue
]
