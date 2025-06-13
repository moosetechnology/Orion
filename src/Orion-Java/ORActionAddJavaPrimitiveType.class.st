Class {
	#name : 'ORActionAddJavaPrimitiveType',
	#superclass : 'ORActionAddTPrimitiveType',
	#instVars : [
		'annotationInstances',
		'types',
		'definedAnnotationTypes',
		'lowerBoundedWildcards',
		'upperBoundedWildcards',
		'concreteEntities',
		'generics',
		'methods'
	],
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> methods: aValue [ methods := aValue
]

{ #category : 'method execution' }
ORActionAddJavaPrimitiveType >> run [

	| newEntity |
	newEntity := self orionModel newPrimitiveType.

	self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #types on: newEntity to: self types. self setFamixProperty: #definedAnnotationTypes on: newEntity to: self definedAnnotationTypes. self setFamixProperty: #lowerBoundedWildcards on: newEntity to: self lowerBoundedWildcards. self setFamixProperty: #upperBoundedWildcards on: newEntity to: self upperBoundedWildcards. self setFamixProperty: #concreteEntities on: newEntity to: self concreteEntities. self setFamixProperty: #generics on: newEntity to: self generics. self setFamixProperty: #methods on: newEntity to: self methods.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaPrimitiveType >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]
