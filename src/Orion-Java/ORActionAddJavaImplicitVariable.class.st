"
I add a FamixJavaImplicitVariable in a MooseModel
I need the following properties of the  implicitvariable

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
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

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionAddJavaImplicitVariable >> createVersionnedEntitySelector [ ^ #newImplicitVariable
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> entityAttributes: aValue [ entityAttributes := aValue
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
ORActionAddJavaImplicitVariable >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> mooseName: aValue [ mooseName := aValue
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
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity sourceAnchor: self sourceAnchor.
	entity annotationInstances: self annotationInstances.
	entity receivingInvocations: self receivingInvocations.
	entity parentBehaviouralEntity: self parentBehaviouralEntity.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity declaredType: self declaredType.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaImplicitVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
