"
I add a new FamixJavaClass in a MooseModel
I need the following properties of the new class

-`annotationInstances`
-`types`
-`definedAnnotationTypes`
-`lowerBoundedWildcards`
-`upperBoundedWildcards`
-`concreteEntities`
-`generics`
-`isAbstract`
-`isClassSide`
-`isFinal`
-`interfaceImplementations`
-`visibility`
-`incomingImports`
-`parentPackage`
-`imports`
"
Class {
	#name : 'ORActionAddJavaClass',
	#superclass : 'ORActionAddTClass',
	#instVars : [
		'annotationInstances',
		'types',
		'definedAnnotationTypes',
		'lowerBoundedWildcards',
		'upperBoundedWildcards',
		'concreteEntities',
		'generics',
		'isAbstract',
		'isClassSide',
		'isFinal',
		'interfaceImplementations',
		'visibility',
		'incomingImports',
		'parentPackage',
		'imports'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaClass >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaClass >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaClass >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionAddJavaClass >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionAddJavaClass >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionAddJavaClass >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaClass >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaClass >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionAddJavaClass >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionAddJavaClass >> imports [ ^imports
]

{ #category : 'accessing' }
ORActionAddJavaClass >> imports: aValue [ imports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaClass >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionAddJavaClass >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaClass >> interfaceImplementations [ ^interfaceImplementations
]

{ #category : 'accessing' }
ORActionAddJavaClass >> interfaceImplementations: aValue [ interfaceImplementations := aValue
]

{ #category : 'accessing' }
ORActionAddJavaClass >> isAbstract [ ^isAbstract
]

{ #category : 'accessing' }
ORActionAddJavaClass >> isAbstract: aValue [ isAbstract := aValue
]

{ #category : 'accessing' }
ORActionAddJavaClass >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionAddJavaClass >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionAddJavaClass >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionAddJavaClass >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionAddJavaClass >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaClass >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaClass >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionAddJavaClass >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'method execution' }
ORActionAddJavaClass >> run [

	| newEntity |
	newEntity := self orionModel newClass.

	self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #types on: newEntity to: self types. self setFamixProperty: #definedAnnotationTypes on: newEntity to: self definedAnnotationTypes. self setFamixProperty: #lowerBoundedWildcards on: newEntity to: self lowerBoundedWildcards. self setFamixProperty: #upperBoundedWildcards on: newEntity to: self upperBoundedWildcards. self setFamixProperty: #concreteEntities on: newEntity to: self concreteEntities. self setFamixProperty: #generics on: newEntity to: self generics. self setFamixProperty: #isAbstract on: newEntity to: self isAbstract. self setFamixProperty: #isClassSide on: newEntity to: self isClassSide. self setFamixProperty: #isFinal on: newEntity to: self isFinal. self setFamixProperty: #interfaceImplementations on: newEntity to: self interfaceImplementations. self setFamixProperty: #visibility on: newEntity to: self visibility. self setFamixProperty: #incomingImports on: newEntity to: self incomingImports. self setFamixProperty: #parentPackage on: newEntity to: self parentPackage. self setFamixProperty: #imports on: newEntity to: self imports.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddJavaClass >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaClass >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionAddJavaClass >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaClass >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaClass >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionAddJavaClass >> visibility: aValue [ visibility := aValue
]
