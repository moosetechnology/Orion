Class {
	#name : 'ORActionAddJavaPackage',
	#superclass : 'ORActionAddTPackage',
	#instVars : [
		'annotationInstances',
		'types',
		'definedAnnotationTypes',
		'incomingImports',
		'parentPackage',
		'comments'
	],
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionAddJavaPackage >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'method execution' }
ORActionAddJavaPackage >> run [

	| newEntity |
	newEntity := self orionModel newPackage.

	self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #types on: newEntity to: self types. self setFamixProperty: #definedAnnotationTypes on: newEntity to: self definedAnnotationTypes. self setFamixProperty: #incomingImports on: newEntity to: self incomingImports. self setFamixProperty: #parentPackage on: newEntity to: self parentPackage. self setFamixProperty: #comments on: newEntity to: self comments.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> types: aValue [ types := aValue
]
