Class {
	#name : 'ORActionRenameTParameter',
	#superclass : 'ORActionRenameTNamedEntity',
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
ORActionRenameTParameter >> createVersionnedEntitySelector [

	^ #newParameter
]

{ #category : 'accessing' }
ORActionRenameTParameter >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRenameTParameter >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRenameTParameter >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTParameter >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTParameter >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionRenameTParameter >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionRenameTParameter >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTParameter >> sourceAnchor: aValue [ sourceAnchor := aValue
]
