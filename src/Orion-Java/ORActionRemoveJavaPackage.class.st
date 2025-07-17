"
I remove a FamixJavaPackage in a MooseModel
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
	#name : 'ORActionRemoveJavaPackage',
	#superclass : 'ORActionRemoveJava',
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
ORActionRemoveJavaPackage >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> childEntities [ ^childEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> childEntities: aValue [ childEntities := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaPackage >> createVersionnedEntitySelector [ ^ #newPackage
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> definedAnnotationTypes [ ^definedAnnotationTypes
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> definedAnnotationTypes: aValue [ definedAnnotationTypes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> incomingImports [ ^incomingImports
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> incomingImports: aValue [ incomingImports := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaPackage >> run [

	super run.
	entity sourceAnchor: nil.
	entity annotationInstances: nil.
	entity types: nil.
	entity definedAnnotationTypes: nil.
	entity incomingImports: nil.
	entity childEntities: nil.
	entity isStub: nil.
	entity parentPackage: nil.
	entity comments: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> types [ ^types
]

{ #category : 'accessing' }
ORActionRemoveJavaPackage >> types: aValue [ types := aValue
]
