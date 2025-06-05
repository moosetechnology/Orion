Class {
	#name : 'ORActionRenameTMethod',
	#superclass : 'ORActionRenameNamedEntity',
	#instVars : [
		'parentType',
		'signature',
		'declaredType',
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRenameTMethod >> createVersionnedEntitySelector [

	^ #newMethod
]

{ #category : 'accessing' }
ORActionRenameTMethod >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRenameTMethod >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRenameTMethod >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTMethod >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTMethod >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionRenameTMethod >> parentType: aValue [ parentType := aValue
]

{ #category : 'accessing' }
ORActionRenameTMethod >> signature [ ^signature
]

{ #category : 'accessing' }
ORActionRenameTMethod >> signature: aValue [ signature := aValue
]

{ #category : 'accessing' }
ORActionRenameTMethod >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTMethod >> sourceAnchor: aValue [ sourceAnchor := aValue
]
