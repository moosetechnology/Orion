Class {
	#name : 'ORActionAddTAnnotationTypeAttribute',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'annotationAttributeInstances',
		'parentType',
		'incomingAccesses',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTAnnotationTypeAttribute class >> createVersionnedEntitySelector [ ^ #newAnnotationTypeAttribute
]

{ #category : 'method execution' }
ORActionAddTAnnotationTypeAttribute class >> run [
	super run.
	entity annotationAttributeInstances: self annotationAttributeInstances.
	entity parentType: self parentType.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity declaredType: self declaredType.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> annotationAttributeInstances [ ^annotationAttributeInstances
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> annotationAttributeInstances: aValue [ annotationAttributeInstances := aValue
]

{ #category : 'method execution' }
ORActionAddTAnnotationTypeAttribute >> createVersionnedEntitySelector [ ^ #newAnnotationTypeAttribute
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'method execution' }
ORActionAddTAnnotationTypeAttribute >> run [
	super run.
	entity annotationAttributeInstances: self annotationAttributeInstances.
	entity parentType: self parentType.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity declaredType: self declaredType.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
