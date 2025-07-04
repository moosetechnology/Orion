"
I add a FamixJavaParameter in a MooseModel
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
	#name : 'ORActionAddJavaParameter',
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
		'isFinal',
		'parentBehaviouralEntity',
		'incomingAccesses',
		'isStub',
		'declaredType',
		'comments'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaParameter >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionAddJavaParameter >> createVersionnedEntitySelector [ ^ #newParameter
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaParameter >> run [

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
ORActionAddJavaParameter >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaParameter >> sourceAnchor: aValue [ sourceAnchor := aValue
]
