Class {
	#name : 'ORActionRemoveJavaAttribute',
	#superclass : 'ORActionRemoveTAttribute',
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
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isTransient [ ^isTransient
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isTransient: aValue [ isTransient := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isVolatile [ ^isVolatile
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> isVolatile: aValue [ isVolatile := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionRemoveJavaAttribute >> visibility: aValue [ visibility := aValue
]
