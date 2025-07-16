"
I add a FamixJavaEnumValue in a MooseModel
I need the following properties of the  enumvalue

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`annotationInstances`
-`receivingInvocations`
-`parentEnum`
-`incomingAccesses`
-`isStub`
-`declaredType`
-`comments`
"
Class {
	#name : 'ORActionAddJavaEnumValue',
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
		'parentEnum',
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
ORActionAddJavaEnumValue >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionAddJavaEnumValue >> createVersionnedEntitySelector [ ^ #newEnumValue
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> parentEnum [ ^parentEnum
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> parentEnum: aValue [ parentEnum := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaEnumValue >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity sourceAnchor: self sourceAnchor.
	entity annotationInstances: self annotationInstances.
	entity receivingInvocations: self receivingInvocations.
	entity parentEnum: self parentEnum.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity declaredType: self declaredType.
	entity comments: self comments.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> sourceAnchor: aValue [ sourceAnchor := aValue
]
