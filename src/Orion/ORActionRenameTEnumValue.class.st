Class {
	#name : 'ORActionRenameTEnumValue',
	#superclass : 'ORActionRenameNamedEntity',
	#instVars : [
		'parentEnum',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRenameTEnumValue >> createVersionnedEntitySelector [

	^ #newEnumValue
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> parentEnum [ ^parentEnum
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> parentEnum: aValue [ parentEnum := aValue
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTEnumValue >> sourceAnchor: aValue [ sourceAnchor := aValue
]
