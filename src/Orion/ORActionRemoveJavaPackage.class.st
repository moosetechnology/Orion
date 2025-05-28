Class {
	#name : 'ORActionRemoveJavaPackage',
	#superclass : 'ORActionRemoveTPackage',
	#instVars : [
		'annotationInstances',
		'types',
		'definedAnnotationTypes',
		'incomingImports',
		'parentPackage',
		'comments'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> types [ ^types
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> types: aValue [ types := aValue
]
