Class {
	#name : 'ORActionRenameTAttribute',
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
ORActionRenameTAttribute >> createVersionnedEntitySelector [

	^ #newAttribute
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
