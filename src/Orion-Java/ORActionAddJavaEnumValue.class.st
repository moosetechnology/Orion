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
	#superclass : 'ORActionAddNamedEntityJava',
	#instVars : [
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
ORActionAddJavaEnumValue >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionAddJavaEnumValue >> createVersionnedEntitySelector [ 

	^#newEnumValue
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> declaredType: aValue [ declaredType := aValue
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
	entity sourceAnchor: self sourceAnchor.
	self annotationInstances 
		ifNotNil: [entity annotationInstances: self annotationInstances].
	self receivingInvocations 
		ifNotNil: [entity receivingInvocations: self receivingInvocations].
	entity parentEnum: self parentEnum.
	self incomingAccesses 
		ifNotNil: [entity incomingAccesses: self incomingAccesses].
	entity isStub: self isStub.
	"entity declaredType: self declaredType."
	self comments
		ifNotNil: [entity comments: self comments].

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaEnumValue >> sourceAnchor: aValue [ sourceAnchor := aValue
]
