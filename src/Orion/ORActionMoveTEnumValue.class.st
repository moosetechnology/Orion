Class {
	#name : 'ORActionMoveTEnumValue',
	#superclass : 'ORActionMoveNamedEntity',
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
ORActionMoveTEnumValue >> createVersionnedEntitySelector [

	^ #newEnumValue
]

{ #category : 'accessing' }
ORActionMoveTEnumValue >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionMoveTEnumValue >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionMoveTEnumValue >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveTEnumValue >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveTEnumValue >> parentEnum [ ^parentEnum
]

{ #category : 'accessing' }
ORActionMoveTEnumValue >> parentEnum: aValue [ parentEnum := aValue
]

{ #category : 'accessing' }
ORActionMoveTEnumValue >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTEnumValue >> sourceAnchor: aValue [ sourceAnchor := aValue
]
