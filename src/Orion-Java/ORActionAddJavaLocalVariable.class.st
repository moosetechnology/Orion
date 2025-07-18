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
	#superclass : 'ORActionAddNamedEntityJava',
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
ORActionAddJavaLocalVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionAddJavaLocalVariable >> createVersionnedEntitySelector [ 

	^#newLocalVariable
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> declaredType: aValue [ declaredType := aValue
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
	entity sourceAnchor: self sourceAnchor.
	self annotationInstances
		ifNotNil: [entity annotationInstances: self annotationInstances ].
	self receivingInvocations 
		ifNotNil: [entity receivingInvocations: self receivingInvocations ].
	entity isFinal: self isFinal.
	entity parentBehaviouralEntity: self parentBehaviouralEntity.
	self incomingAccesses 
		ifNotNil: [entity incomingAccesses: self incomingAccesses].
	entity isStub: self isStub.
	"entity declaredType: self declaredType."
	self comments 
		ifNotNil: [ entity comments: self comments ].

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaLocalVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
