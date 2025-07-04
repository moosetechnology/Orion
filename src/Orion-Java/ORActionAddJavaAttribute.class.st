"
I add a FamixJavaAttribute in a MooseModel
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
	#name : 'ORActionAddJavaAttribute',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
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
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaAttribute >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionAddJavaAttribute >> createVersionnedEntitySelector [ ^ #newAttribute
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isTransient [ ^isTransient
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isTransient: aValue [ isTransient := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isVolatile [ ^isVolatile
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isVolatile: aValue [ isVolatile := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaAttribute >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity sourceAnchor: self sourceAnchor.
	entity annotationInstances: self annotationInstances.
	entity receivingInvocations: self receivingInvocations.
	entity isTransient: self isTransient.
	entity isVolatile: self isVolatile.
	entity parentType: self parentType.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity declaredType: self declaredType.
	entity isClassSide: self isClassSide.
	entity isFinal: self isFinal.
	entity visibility: self visibility.
	entity comments: self comments.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> visibility: aValue [ visibility := aValue
]
