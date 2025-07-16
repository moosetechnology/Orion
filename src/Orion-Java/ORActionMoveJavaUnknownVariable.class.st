"
I move a new FamixJavaUnknownVariable in a MooseModel
I need the following properties of the new unknownvariable

-`annotationInstances`
-`receivingInvocations`
"
Class {
	#name : 'ORActionMoveJavaUnknownVariable',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTUnknownVariable .

	super entity: anEntity
]
