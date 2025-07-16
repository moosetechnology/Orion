"
I move a new FamixJavaType in a MooseModel
I need the following properties of the new type

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
	#name : 'ORActionMoveJavaType',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaType >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTType .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaType >> to: container [

	IllegalType check: container useTrait:  FamixTWithTypes .

	super to: container
]
