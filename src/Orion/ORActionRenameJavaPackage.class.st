Class {
	#name : 'ORActionRenameJavaPackage',
	#superclass : 'ORActionRenameTPackage',
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
ORActionRenameJavaPackage >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> types [ ^types
]

{ #category : 'accessing' }
ORActionRenameJavaPackage >> types: aValue [ types := aValue
]
