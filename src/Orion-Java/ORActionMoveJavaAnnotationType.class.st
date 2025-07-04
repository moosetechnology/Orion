"
I move a new FamixJavaAnnotationType in a MooseModel
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
	#name : 'ORActionMoveJavaAnnotationType',
	#superclass : 'ORActionMoveTAnnotationType',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel'
	],
	#category : 'Orion-Java-Move',
	#package : 'Orion-Java',
	#tag : 'Move'
}

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaAnnotationType >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> name [ ^name
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> parentPackage [ ^parentPackage
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> parentPackage: aValue [ parentPackage := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> typeContainer: aValue [ typeContainer := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> visibility: aValue [ visibility := aValue
]
