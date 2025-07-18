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
	#superclass : 'ORActionAddNamedEntityJava',
	#instVars : [
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
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
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
ORActionAddJavaAnnotationTypeAttribute >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionAddJavaAnnotationTypeAttribute >> createVersionnedEntitySelector [ 

	^#newAnnotationTypeAttribute
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> declaredType: aValue [ declaredType := aValue
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
	entity sourceAnchor: self sourceAnchor.
	self annotationInstances 
		ifNotNil:	 [entity annotationInstances: self annotationInstances].
	self receivingInvocations	
		ifNotNil:	 [entity receivingInvocations: self receivingInvocations].
	self annotationAttributeInstances 
		ifNotNil: [entity annotationAttributeInstances: self annotationAttributeInstances].
	entity parentType: self parentType.
	self incomingAccesses 
		ifNotNil: [entity incomingAccesses: self incomingAccesses].
	entity isStub: self isStub.
	"entity declaredType: self declaredType."
	self comments 
		ifNotNil: [entity comments: self comments].

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationTypeAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
