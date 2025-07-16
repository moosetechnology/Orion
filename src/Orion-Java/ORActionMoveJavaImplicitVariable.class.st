"
I move a new FamixJavaImplicitVariable in a MooseModel
I need the following properties of the new implicitvariable

-`annotationInstances`
-`receivingInvocations`
"
Class {
	#name : 'ORActionMoveJavaImplicitVariable',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTImplicitVariable .

	super entity: anEntity
]
