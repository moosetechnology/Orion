"
I add a FamixJavaLocalVariable in a MooseModel
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
	#name : 'ORActionAddJavaLocalVariable',
	#superclass : 'ORActionAddJava',
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
ORActionAddJavaLocalVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionAddJavaLocalVariable >> createVersionnedEntitySelector [ ^ #newLocalVariable
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaLocalVariable >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity sourceAnchor: self sourceAnchor.
	entity annotationInstances: self annotationInstances.
	entity receivingInvocations: self receivingInvocations.
	entity isFinal: self isFinal.
	entity parentBehaviouralEntity: self parentBehaviouralEntity.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity declaredType: self declaredType.
	entity comments: self comments.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
