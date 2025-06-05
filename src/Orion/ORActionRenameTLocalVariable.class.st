Class {
	#name : 'ORActionRenameTLocalVariable',
	#superclass : 'ORActionRenameNamedEntity',
	#instVars : [
		'parentBehaviouralEntity',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRenameTLocalVariable >> createVersionnedEntitySelector [

	^ #newLocalVariable
]

{ #category : 'accessing' }
ORActionRenameTLocalVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRenameTLocalVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRenameTLocalVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTLocalVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTLocalVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionRenameTLocalVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionRenameTLocalVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTLocalVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
