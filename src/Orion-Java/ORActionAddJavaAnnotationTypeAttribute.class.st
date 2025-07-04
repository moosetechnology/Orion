"
I add a FamixJavaAnnotationTypeAttribute in a MooseModel
I need the following properties of the  annotationtypeattribute

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`annotationInstances`
-`receivingInvocations`
-`annotationAttributeInstances`
-`parentType`
-`incomingAccesses`
-`isStub`
-`declaredType`
-`comments`
"
Class {
	#name : 'ORActionAddJavaAnnotationTypeAttribute',
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
		'annotationAttributeInstances',
		'parentType',
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
ORActionAddJavaAnnotationTypeAttribute >> annotationAttributeInstances [ ^annotationAttributeInstances
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> annotationAttributeInstances: aValue [ annotationAttributeInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionAddJavaAnnotationTypeAttribute >> createVersionnedEntitySelector [ ^ #newAnnotationTypeAttribute
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaAnnotationTypeAttribute >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity sourceAnchor: self sourceAnchor.
	entity annotationInstances: self annotationInstances.
	entity receivingInvocations: self receivingInvocations.
	entity annotationAttributeInstances: self annotationAttributeInstances.
	entity parentType: self parentType.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity declaredType: self declaredType.
	entity comments: self comments.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
