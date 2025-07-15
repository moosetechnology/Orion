"
I move a new FamixJavaMethod in a MooseModel
I need the following properties of the new method

-`annotationInstances`
-`types`
-`definedAnnotationTypes`
-`isSynchronized`
-`isAbstract`
-`isClassSide`
-`isFinal`
-`kind`
-`visibility`
-`incomingImports`
-`comments`
-`caughtExceptions`
-`declaredExceptions`
-`thrownExceptions`
"
Class {
	#name : 'ORActionMoveJavaMethod',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionMoveJavaMethod >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTMethod.

	super entity: anEntity
]

{ #category : 'method execution' }
ORActionMoveJavaMethod >> to: container [

	IllegalType check: container useTrait:  FamixTWithMethods.

	super to: container
]
