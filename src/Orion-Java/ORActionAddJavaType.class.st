"
I add a new FamixJavaType in a MooseModel
I need the following properties of the new type

-`annotationInstances`
-`types`
-`definedAnnotationTypes`
-`lowerBoundedWildcards`
-`upperBoundedWildcards`
-`concreteEntities`
-`generics`
-`methods`
"
Class {
	#name : 'ORActionAddJavaType',
	#superclass : 'ORActionAddTType',
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
ORActionAddJavaType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaType >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionAddJavaType >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaType >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionAddJavaType >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaType >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionAddJavaType >> methods: aValue [ methods := aValue
]

{ #category : 'method execution' }
ORActionAddJavaType >> run [

	| newEntity |
	newEntity := self orionModel newType.

	self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #types on: newEntity to: self types. self setFamixProperty: #definedAnnotationTypes on: newEntity to: self definedAnnotationTypes. self setFamixProperty: #lowerBoundedWildcards on: newEntity to: self lowerBoundedWildcards. self setFamixProperty: #upperBoundedWildcards on: newEntity to: self upperBoundedWildcards. self setFamixProperty: #concreteEntities on: newEntity to: self concreteEntities. self setFamixProperty: #generics on: newEntity to: self generics. self setFamixProperty: #methods on: newEntity to: self methods.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddJavaType >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaType >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionAddJavaType >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaType >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]
