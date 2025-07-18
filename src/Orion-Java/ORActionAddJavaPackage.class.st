"
I add a FamixJavaPackage in a MooseModel
I need the following properties of the  package

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`annotationInstances`
-`types`
-`definedAnnotationTypes`
-`incomingImports`
-`childEntities`
-`isStub`
-`parentPackage`
-`comments`
"
Class {
	#name : 'ORActionAddJavaPackage',
	#superclass : 'ORActionAddNamedEntityJava',
	#instVars : [
		'sourceAnchor',
		'annotationInstances',
		'types',
		'definedAnnotationTypes',
		'incomingImports',
		'childEntities',
		'isStub',
		'parentPackage',
		'comments'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddJavaPackage >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> childEntities [ ^childEntities
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> childEntities: aValue [ childEntities := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionAddJavaPackage >> createVersionnedEntitySelector [ 

	^#newPackage
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'method execution' }
ORActionAddJavaPackage >> run [

	super run.
	entity sourceAnchor: self sourceAnchor.
	self annotationInstances
		ifNotNil: [entity annotationInstances: self annotationInstances].
	self types
		ifNotNil: [entity types: self types].
	self definedAnnotationTypes 
		ifNotNil: [entity definedAnnotationTypes: self definedAnnotationTypes].
	self incomingImports 
		ifNotNil: [entity incomingImports: self incomingImports].
	self childEntities 
		ifNotNil: [entity childEntities: self childEntities].
	entity isStub: self isStub.
	entity parentPackage: self parentPackage.
	self comments
		ifNotNil: [entity comments: self comments].

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> types [ ^types
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> types: aValue [ types := aValue
]
