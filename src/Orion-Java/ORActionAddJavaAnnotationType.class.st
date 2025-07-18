"
I add a FamixJavaAnnotationType in a MooseModel
I need the following properties of the  annotationtype

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
-`annotationTypesContainer`
-`instances`
-`visibility`
-`implementations`
-`parentPackage`
-`attributes`
-`comments`
-`superInheritances`
-`subInheritances`
"
Class {
	#name : 'ORActionAddJavaAnnotationType',
	#superclass : 'ORActionAddNamedEntityJava',
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
		'annotationTypesContainer',
		'instances',
		'visibility',
		'implementations',
		'parentPackage',
		'attributes',
		'comments',
		'superInheritances',
		'subInheritances'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> annotationTypesContainer [ ^annotationTypesContainer
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> annotationTypesContainer: aValue [ annotationTypesContainer := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> concreteEntities [ ^concreteEntities
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> concreteEntities: aValue [ concreteEntities := aValue
]

{ #category : 'method execution' }
ORActionAddJavaAnnotationType >> createVersionnedEntitySelector [ 

	^#newAnnotationType
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> generics [ ^generics
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> generics: aValue [ generics := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> implementations [ ^implementations
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> implementations: aValue [ implementations := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> incomingReferences [ ^incomingReferences
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> incomingReferences: aValue [ incomingReferences := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> instances [ ^instances
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> instances: aValue [ instances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> lowerBoundedWildcards [ ^lowerBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> lowerBoundedWildcards: aValue [ lowerBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> methods [ ^methods
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> methods: aValue [ methods := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'method execution' }
ORActionAddJavaAnnotationType >> run [

	super run.
	entity sourceAnchor: self sourceAnchor.
	self annotationInstances 
		ifNotNil:	 [entity annotationInstances: self annotationInstances].
	self types 
		ifNotNil:	 [entity types: self types].
	self definedAnnotationTypes 
		ifNotNil: [entity definedAnnotationTypes: self definedAnnotationTypes].
	self lowerBoundedWildcards 
		ifNotNil: [entity lowerBoundedWildcards: self lowerBoundedWildcards].
	self upperBoundedWildcards 
		ifNotNil: [entity upperBoundedWildcards: self upperBoundedWildcards].
	self concreteEntities 
		ifNotNil: [entity concreteEntities: self concreteEntities].
	self generics
		ifNotNil: [entity generics: self generics].
	self typedEntities 
		ifNotNil: [entity typedEntities: self typedEntities].
	self incomingReferences
		ifNotNil: [entity incomingReferences: self incomingReferences].
	self methods
		ifNotNil: [entity methods: self methods].
	self instances
		ifNotNil: [entity instances: self instances].
	entity typeContainer: self typeContainer.
	entity isStub: self isStub.
	entity annotationTypesContainer: self annotationTypesContainer.
	entity visibility: self visibility.
	self implementations 
		ifNotNil: [entity implementations: self implementations].
	entity parentPackage: self parentPackage.
	self attributes 
		ifNotNil: [entity attributes: self attributes].
	self comments
		ifNotNil: [entity comments: self comments].
	self superInheritances 
		ifNotNil: [entity superInheritances: self superInheritances].
	self subInheritances 
		ifNotNil: [entity subInheritances: self subInheritances].

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> subInheritances [ ^subInheritances
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> subInheritances: aValue [ subInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> superInheritances [ ^superInheritances
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> superInheritances: aValue [ superInheritances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> typedEntities [ ^typedEntities
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> typedEntities: aValue [ typedEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> types: aValue [ types := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> upperBoundedWildcards [ ^upperBoundedWildcards
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> upperBoundedWildcards: aValue [ upperBoundedWildcards := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> visibility: aValue [ visibility := aValue
]
