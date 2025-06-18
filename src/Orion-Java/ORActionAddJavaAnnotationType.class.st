"
I add a new FamixJavaAnnotationType in a MooseModel
I need the following properties of the new annotationtype

-`sourceAnchor`
-`name`
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
	#superclass : 'ORActionAddTAnnotationType',
	#instVars : [
		'sourceAnchor',
		'name',
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
		'visibility',
		'implementations',
		'parentPackage',
		'attributes',
		'comments',
		'superInheritances',
		'subInheritances'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> annotationInstances: aValue [ annotationInstances := aValue
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
ORActionAddJavaAnnotationType >> name [ ^name
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationType >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'method execution' }
ORActionAddJavaAnnotationType >> run [

	| newEntity |
	newEntity := self orionModel newAnnotationType.

	self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor. self setFamixProperty: #name on: newEntity to: self name. self setFamixProperty: #annotationInstances on: newEntity to: self annotationInstances. self setFamixProperty: #types on: newEntity to: self types. self setFamixProperty: #definedAnnotationTypes on: newEntity to: self definedAnnotationTypes. self setFamixProperty: #lowerBoundedWildcards on: newEntity to: self lowerBoundedWildcards. self setFamixProperty: #upperBoundedWildcards on: newEntity to: self upperBoundedWildcards. self setFamixProperty: #concreteEntities on: newEntity to: self concreteEntities. self setFamixProperty: #generics on: newEntity to: self generics. self setFamixProperty: #typeContainer on: newEntity to: self typeContainer. self setFamixProperty: #typedEntities on: newEntity to: self typedEntities. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #incomingReferences on: newEntity to: self incomingReferences. self setFamixProperty: #methods on: newEntity to: self methods. self setFamixProperty: #visibility on: newEntity to: self visibility. self setFamixProperty: #implementations on: newEntity to: self implementations. self setFamixProperty: #parentPackage on: newEntity to: self parentPackage. self setFamixProperty: #attributes on: newEntity to: self attributes. self setFamixProperty: #comments on: newEntity to: self comments. self setFamixProperty: #superInheritances on: newEntity to: self superInheritances. self setFamixProperty: #subInheritances on: newEntity to: self subInheritances.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
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
