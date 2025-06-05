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

{ #category : 'method execution' }
ORActionAddTAnnotationTypeAttribute >> createVersionnedEntitySelector [

	^ #newAnnotationTypeAttribute
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTAnnotationTypeAttribute >> declaredType: aValue [ declaredType := aValue
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
