"
I remove a FamixJavaParameterType in a MooseModel
I need the following properties of the  parametertype

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`annotationInstances`
-`types`
-`definedAnnotationTypes`
-`lowerBoundedWildcards`
-`upperBoundedWildcards`
-`concreteEntities`
-`generics`
-`typeContainer`
-`typedEntities`
-`isStub`
-`incomingReferences`
-`methods`
-`concretizations`
-`genericEntities`
-`catchingEntities`
-`declaringEntities`
-`throwingEntities`
-`declaredType`
-`superInheritances`
-`subInheritances`
"
Class {
	#name : 'ORActionRemoveJavaParameterType',
	#superclass : 'ORActionRemoveNamedEntity',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'sourceAnchor',
		'annotationInstances',
		'types',
		'definedAnnotationTypes',
		'lowerBoundedWildcards',
		'upperBoundedWildcards',
		'concreteEntities',
		'generics',
		'typeContainer',
		'typedEntities',
		'isStub',
		'incomingReferences',
		'methods',
		'concretizations',
		'genericEntities',
		'catchingEntities',
		'declaringEntities',
		'throwingEntities',
		'declaredType',
		'superInheritances',
		'subInheritances'
	],
	#category : 'Orion-Java-Remove',
	#package : 'Orion-Java',
	#tag : 'Remove'
}

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> catchingEntities [ ^catchingEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> catchingEntities: aValue [ catchingEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> concretizations [ ^concretizations
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> concretizations: aValue [ concretizations := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaParameterType >> createVersionnedEntitySelector [ ^ #newParameterType
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> declaringEntities [ ^declaringEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> declaringEntities: aValue [ declaringEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> genericEntities [ ^genericEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> genericEntities: aValue [ genericEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaParameterType >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
	entity sourceAnchor: nil.
	entity annotationInstances: nil.
	entity types: nil.
	entity definedAnnotationTypes: nil.
	entity lowerBoundedWildcards: nil.
	entity upperBoundedWildcards: nil.
	entity concreteEntities: nil.
	entity generics: nil.
	entity typeContainer: nil.
	entity typedEntities: nil.
	entity isStub: nil.
	entity incomingReferences: nil.
	entity methods: nil.
	entity concretizations: nil.
	entity genericEntities: nil.
	entity catchingEntities: nil.
	entity declaringEntities: nil.
	entity throwingEntities: nil.
	entity declaredType: nil.
	entity superInheritances: nil.
	entity subInheritances: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> throwingEntities [ ^throwingEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> throwingEntities: aValue [ throwingEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> types [ ^types
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterType >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]
