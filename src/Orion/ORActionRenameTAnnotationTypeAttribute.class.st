Class {
	#name : 'ORActionRenameTAnnotationTypeAttribute',
	#superclass : 'ORActionRenameTNamedEntity',
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
ORActionRenameTAnnotationTypeAttribute >> createVersionnedEntitySelector [

	^ #newAnnotationTypeAttribute
]

{ #category : 'accessing' }
ORActionRenameTAnnotationTypeAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRenameTAnnotationTypeAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRenameTAnnotationTypeAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTAnnotationTypeAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTAnnotationTypeAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionRenameTAnnotationTypeAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'accessing' }
ORActionRenameTAnnotationTypeAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTAnnotationTypeAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
