"
I add a FamixJavaParameterType in a MooseModel
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
	#name : 'ORActionAddJavaParameterType',
	#superclass : 'ORActionAddNamedEntity',
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
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaParameterType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> catchingEntities [ ^catchingEntities
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> catchingEntities: aValue [ catchingEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> concretizations [ ^concretizations
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> concretizations: aValue [ concretizations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaParameterType >> createVersionnedEntitySelector [ ^ #newParameterType
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> declaringEntities [ ^declaringEntities
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> declaringEntities: aValue [ declaringEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> genericEntities [ ^genericEntities
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> genericEntities: aValue [ genericEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionAddJavaParameterType >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity sourceAnchor: self sourceAnchor.
	entity annotationInstances: self annotationInstances.
	entity types: self types.
	entity definedAnnotationTypes: self definedAnnotationTypes.
	entity lowerBoundedWildcards: self lowerBoundedWildcards.
	entity upperBoundedWildcards: self upperBoundedWildcards.
	entity concreteEntities: self concreteEntities.
	entity generics: self generics.
	entity typeContainer: self typeContainer.
	entity typedEntities: self typedEntities.
	entity isStub: self isStub.
	entity incomingReferences: self incomingReferences.
	entity methods: self methods.
	entity concretizations: self concretizations.
	entity genericEntities: self genericEntities.
	entity catchingEntities: self catchingEntities.
	entity declaringEntities: self declaringEntities.
	entity throwingEntities: self throwingEntities.
	entity declaredType: self declaredType.
	entity superInheritances: self superInheritances.
	entity subInheritances: self subInheritances.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> throwingEntities [ ^throwingEntities
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> throwingEntities: aValue [ throwingEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaParameterType >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]
