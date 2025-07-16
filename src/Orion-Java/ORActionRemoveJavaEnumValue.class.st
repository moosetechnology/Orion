"
I remove a FamixJavaEnumValue in a MooseModel
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
	#name : 'ORActionRemoveJavaEnumValue',
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
ORActionRemoveJavaEnumValue >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaEnumValue >> createVersionnedEntitySelector [ ^ #newEnumValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> parentEnum [ ^parentEnum
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> parentEnum: aValue [ parentEnum := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaEnumValue >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
	entity sourceAnchor: nil.
	entity annotationInstances: nil.
	entity receivingInvocations: nil.
	entity parentEnum: nil.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity declaredType: nil.
	entity comments: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaEnumValue >> sourceAnchor: aValue [ sourceAnchor := aValue
]
