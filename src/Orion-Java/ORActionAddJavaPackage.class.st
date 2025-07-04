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
		'incomingImports',
		'childEntities',
		'isStub',
		'parentPackage',
		'comments'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaPackage >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> cache: aValue [ cache := aValue
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
ORActionAddJavaPackage >> createVersionnedEntitySelector [ ^ #newPackage
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> entityAttributes: aValue [ entityAttributes := aValue
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
ORActionAddJavaPackage >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaPackage >> mooseName: aValue [ mooseName := aValue
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
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity sourceAnchor: self sourceAnchor.
	entity annotationInstances: self annotationInstances.
	entity types: self types.
	entity definedAnnotationTypes: self definedAnnotationTypes.
	entity incomingImports: self incomingImports.
	entity childEntities: self childEntities.
	entity isStub: self isStub.
	entity parentPackage: self parentPackage.
	entity comments: self comments.

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
