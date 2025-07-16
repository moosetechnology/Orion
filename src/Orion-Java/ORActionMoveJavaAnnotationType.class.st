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
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTAnnotationType .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaAnnotationType >> to: container [

	IllegalType check: container useTrait:  FamixTWithAnnotationTypes .

	super to: container
]
