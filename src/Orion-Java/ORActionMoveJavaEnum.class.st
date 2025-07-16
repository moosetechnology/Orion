"
I move a new FamixJavaEnum in a MooseModel
I need the following properties of the new enum

-`annotationInstances`
-`types`
-`definedAnnotationTypes`
-`lowerBoundedWildcards`
-`upperBoundedWildcards`
-`concreteEntities`
-`generics`
-`methods`
-`visibility`
-`incomingImports`
-`receivingInvocations`
-`attributes`
-`comments`
-`imports`
-`superInheritances`
-`subInheritances`
"
Class {
	#name : 'ORActionMoveJavaEnum',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaEnum >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTEnum .

	super entity: anEntity
]
