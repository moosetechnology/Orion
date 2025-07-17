"
I remove a FamixJavaInterface in a MooseModel
I need the following properties of the  interface

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
-`isClassSide`
-`isFinal`
-`visibility`
-`implementations`
-`incomingImports`
-`receivingInvocations`
-`parentPackage`
-`attributes`
-`comments`
-`imports`
-`superInheritances`
-`subInheritances`
"
Class {
	#name : 'ORActionRemoveJavaInterface',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
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
		'isClassSide',
		'isFinal',
		'visibility',
		'implementations',
		'incomingImports',
		'receivingInvocations',
		'parentPackage',
		'attributes',
		'comments',
		'imports',
		'superInheritances',
		'subInheritances'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaInterface >> createVersionnedEntitySelector [ ^ #newInterface
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> implementations [ ^implementations
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> implementations: aValue [ implementations := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> imports [ ^imports
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> imports: aValue [ imports := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaInterface >> run [

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
	entity isClassSide: nil.
	entity isFinal: nil.
	entity visibility: nil.
	entity implementations: nil.
	entity incomingImports: nil.
	entity receivingInvocations: nil.
	entity parentPackage: nil.
	entity attributes: nil.
	entity comments: nil.
	entity imports: nil.
	entity superInheritances: nil.
	entity subInheritances: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> types [ ^types
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionRemoveJavaInterface >> visibility: aValue [ visibility := aValue
]
