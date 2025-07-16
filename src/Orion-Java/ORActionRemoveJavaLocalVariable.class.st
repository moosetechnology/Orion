"
I remove a FamixJavaLocalVariable in a MooseModel
I need the following properties of the  localvariable

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
	#name : 'ORActionRemoveJavaLocalVariable',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
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
ORActionRemoveJavaLocalVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaLocalVariable >> createVersionnedEntitySelector [ ^ #newLocalVariable
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaLocalVariable >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
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
ORActionRemoveJavaLocalVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaLocalVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
