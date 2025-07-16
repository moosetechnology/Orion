"
I move a new FamixJavaAttribute in a MooseModel
I need the following properties of the new attribute

-`annotationInstances`
-`receivingInvocations`
-`isTransient`
-`isVolatile`
-`isClassSide`
-`isFinal`
-`visibility`
-`comments`
"
Class {
	#name : 'ORActionMoveJavaAttribute',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTAttribute .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> to: container [

	IllegalType check: container useTrait:  FamixTWithAttributes .

	super to: container
]
