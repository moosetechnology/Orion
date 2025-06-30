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
ORActionAddJavaClass >> isAbstract [
	^isAbstract
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
ORActionAddJavaClass >> parentPackage [

	^parentPackage versionLookup: orionModel
]

{ #category : 'accessing' }
ORActionAddJavaClass >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'method execution' }
ORActionAddJavaClass >> run [

	super run.

	entity isAbstract: self isAbstract. 
	entity isClassSide: self isClassSide. 
	entity isFinal: self isFinal.

	"entity annotationInstances: self annotationInstances. 
	entity concreteEntities: self concreteEntities. 
	entity definedAnnotationTypes: self definedAnnotationTypes. 
	entity generics: self generics. 
	entity imports: self imports.
	entity incomingImports: self incomingImports. 
	entity interfaceImplementations: self interfaceImplementations. 
	entity lowerBoundedWildcards: self lowerBoundedWildcards. 
	entity parentPackage: self parentPackage. 
	entity types: self types. 
	entity upperBoundedWildcards: self upperBoundedWildcards. 
	entity visibility: self visibility. "

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
