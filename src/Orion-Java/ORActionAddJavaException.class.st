"
I add a new FamixJavaException in a MooseModel
I need the following properties of the new exception

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
	#name : 'ORActionAddJavaException',
	#superclass : 'ORActionAddTException',
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
ORActionAddJavaException >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaException >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionAddJavaException >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaException >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionAddJavaException >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> imports [ ^imports
]

{ #category : 'accessing' }
ORActionAddJavaException >> imports: aValue [ imports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionAddJavaException >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> interfaceImplementations [ ^interfaceImplementations
]

{ #category : 'accessing' }
ORActionAddJavaException >> interfaceImplementations: aValue [ interfaceImplementations := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> isAbstract [ ^isAbstract
]

{ #category : 'accessing' }
ORActionAddJavaException >> isAbstract: aValue [ isAbstract := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionAddJavaException >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionAddJavaException >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaException >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionAddJavaException >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'method execution' }
ORActionAddJavaException >> run [

	| newEntity |
	newEntity := self orionModel newException.

	self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #types on: newEntity to: self types. self setFamixProperty: #definedAnnotationTypes on: newEntity to: self definedAnnotationTypes. self setFamixProperty: #lowerBoundedWildcards on: newEntity to: self lowerBoundedWildcards. self setFamixProperty: #upperBoundedWildcards on: newEntity to: self upperBoundedWildcards. self setFamixProperty: #concreteEntities on: newEntity to: self concreteEntities. self setFamixProperty: #generics on: newEntity to: self generics. self setFamixProperty: #isAbstract on: newEntity to: self isAbstract. self setFamixProperty: #isClassSide on: newEntity to: self isClassSide. self setFamixProperty: #isFinal on: newEntity to: self isFinal. self setFamixProperty: #interfaceImplementations on: newEntity to: self interfaceImplementations. self setFamixProperty: #visibility on: newEntity to: self visibility. self setFamixProperty: #incomingImports on: newEntity to: self incomingImports. self setFamixProperty: #parentPackage on: newEntity to: self parentPackage. self setFamixProperty: #imports on: newEntity to: self imports.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddJavaException >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaException >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaException >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaException >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionAddJavaException >> visibility: aValue [ visibility := aValue
]
