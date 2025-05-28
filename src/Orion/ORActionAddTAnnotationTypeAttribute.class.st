Class {
	#name : 'ORActionAddTAnnotationTypeAttribute',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'parentType',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> annotationAttributeInstances [ ^annotationAttributeInstances
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> annotationAttributeInstances: aValue [ annotationAttributeInstances := aValue
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
ORActionAddTAnnotationTypeAttribute >> name [ ^name
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'method execution' }
ORActionAddTAnnotationTypeAttribute >> run [

	| newEntity |
	newEntity := self orionModel newAnnotationTypeAttribute.

	self setFamixProperty: #parentType on: newEntity to: self parentType. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor. self setFamixProperty: #declaredType on: newEntity to: self declaredType.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
