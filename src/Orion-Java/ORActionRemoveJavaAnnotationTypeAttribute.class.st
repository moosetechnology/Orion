"
I remove a FamixJavaAnnotationTypeAttribute in a MooseModel
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
	#name : 'ORActionRemoveJavaAnnotationTypeAttribute',
	#superclass : 'ORActionRemoveJava',
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
ORActionRemoveJavaAnnotationTypeAttribute >> annotationAttributeInstances [ ^annotationAttributeInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> annotationAttributeInstances: aValue [ annotationAttributeInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaAnnotationTypeAttribute >> createVersionnedEntitySelector [ ^ #newAnnotationTypeAttribute
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaAnnotationTypeAttribute >> run [

	super run.
	entity sourceAnchor: nil.
	entity annotationInstances: nil.
	entity receivingInvocations: nil.
	entity annotationAttributeInstances: nil.
	entity parentType: nil.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity declaredType: nil.
	entity comments: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationTypeAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
