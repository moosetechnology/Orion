"
I add a FamixJavaImplicitVariable in a MooseModel
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
	#name : 'ORActionAddJavaImplicitVariable',
	#superclass : 'ORActionAddNamedEntityJava',
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
ORActionAddJavaImplicitVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'method execution' }
ORActionAddJavaImplicitVariable >> createVersionnedEntitySelector [ 

	^#newImplicitVariable
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaImplicitVariable >> run [

	super run.
	entity sourceAnchor: self sourceAnchor.
	self annotationInstances
		ifNotNil: [entity annotationInstances: self annotationInstances ].
	self receivingInvocations 
		ifNotNil: [entity receivingInvocations: self receivingInvocations ].
	entity parentBehaviouralEntity: self parentBehaviouralEntity.
	self incomingAccesses 
		ifNotNil: [entity incomingAccesses: self incomingAccesses].
	entity isStub: self isStub.
	"entity declaredType: self declaredType."

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
