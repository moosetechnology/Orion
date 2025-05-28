Class {
	#name : 'ORActionRenameJavaAttribute',
	#superclass : 'ORActionRenameTAttribute',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'isTransient',
		'isVolatile',
		'isClassSide',
		'isFinal',
		'visibility',
		'comments'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> isTransient [ ^isTransient
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> isTransient: aValue [ isTransient := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> isVolatile [ ^isVolatile
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> isVolatile: aValue [ isVolatile := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> visibility: aValue [ visibility := aValue
]
