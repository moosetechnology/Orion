"
I move a new FamixJavaPrimitiveType in a MooseModel
I need the following properties of the new primitivetype

-`annotationInstances`
-`types`
-`definedAnnotationTypes`
-`lowerBoundedWildcards`
-`upperBoundedWildcards`
-`concreteEntities`
-`generics`
-`methods`
"
Class {
	#name : 'ORActionMoveJavaPrimitiveType',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaPrimitiveType >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTPrimitiveType .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaPrimitiveType >> to: container [

	IllegalType check: container useTrait:  FamixTWithTypes .

	super to: container
]
