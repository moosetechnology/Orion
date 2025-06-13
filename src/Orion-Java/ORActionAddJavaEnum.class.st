Class {
	#name : 'ORActionAddJavaEnum',
	#superclass : 'ORActionAddTEnum',
	#instVars : [
		'annotationInstances',
		'types',
		'definedAnnotationTypes',
		'lowerBoundedWildcards',
		'upperBoundedWildcards',
		'concreteEntities',
		'generics',
		'methods',
		'visibility',
		'incomingImports',
		'receivingInvocations',
		'attributes',
		'comments',
		'imports',
		'superInheritances',
		'subInheritances'
	],
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

{ #category : 'accessing' }
ORActionAddJavaEnum >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> imports [ ^imports
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> imports: aValue [ imports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaEnum >> run [

	| newEntity |
	newEntity := self orionModel newEnum.

	self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #types on: newEntity to: self types. self setFamixProperty: #definedAnnotationTypes on: newEntity to: self definedAnnotationTypes. self setFamixProperty: #lowerBoundedWildcards on: newEntity to: self lowerBoundedWildcards. self setFamixProperty: #upperBoundedWildcards on: newEntity to: self upperBoundedWildcards. self setFamixProperty: #concreteEntities on: newEntity to: self concreteEntities. self setFamixProperty: #generics on: newEntity to: self generics. self setFamixProperty: #methods on: newEntity to: self methods. self setFamixProperty: #visibility on: newEntity to: self visibility. self setFamixProperty: #incomingImports on: newEntity to: self incomingImports. self setFamixProperty: #receivingInvocations on: newEntity to: self receivingInvocations. self setFamixProperty: #attributes on: newEntity to: self attributes. self setFamixProperty: #comments on: newEntity to: self comments. self setFamixProperty: #imports on: newEntity to: self imports. self setFamixProperty: #superInheritances on: newEntity to: self superInheritances. self setFamixProperty: #subInheritances on: newEntity to: self subInheritances.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionAddJavaEnum >> visibility: aValue [ visibility := aValue
]
