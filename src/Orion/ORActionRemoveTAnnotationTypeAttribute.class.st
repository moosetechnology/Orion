"
I remove a FamixTAnnotationTypeAttribute in a MooseModel
I need the following properties of the  annotationtypeattribute

-`annotationAttributeInstances`
-`parentType`
-`incomingAccesses`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionRemoveTAnnotationTypeAttribute',
	#superclass : 'ORActionRemoveNamedEntity',
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
ORActionRemoveTAnnotationTypeAttribute class >> createVersionnedEntitySelector [ ^ #newAnnotationTypeAttribute
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationTypeAttribute class >> run [
	super run.
	entity annotationAttributeInstances: nil.
	entity parentType: nil.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity declaredType: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> annotationAttributeInstances [ ^annotationAttributeInstances
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> annotationAttributeInstances: aValue [ annotationAttributeInstances := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationTypeAttribute >> createVersionnedEntitySelector [ ^ #newAnnotationTypeAttribute
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'method execution' }
ORActionRemoveTAnnotationTypeAttribute >> run [

	super run.
	entity annotationAttributeInstances: nil.
	entity parentType: nil.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity sourceAnchor: nil.
	entity declaredType: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTAnnotationTypeAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
