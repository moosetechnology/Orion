"
I move a new FamixJavaClass in a MooseModel
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
	#name : 'ORActionMoveJavaClass',
	#superclass : 'ORActionMoveTClass',
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
	#category : 'Orion-Java-Move',
	#package : 'Orion-Java',
	#tag : 'Move'
}

{ #category : 'accessing' }
ORActionMoveJavaClass >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaClass >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> imports [ ^imports
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> imports: aValue [ imports := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> interfaceImplementations [ ^interfaceImplementations
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> interfaceImplementations: aValue [ interfaceImplementations := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> isAbstract [ ^isAbstract
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> isAbstract: aValue [ isAbstract := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> types [ ^types
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> visibility: aValue [ visibility := aValue
]
