"
I move a new FamixJavaLocalVariable in a MooseModel
I need the following properties of the new localvariable

-`annotationInstances`
-`receivingInvocations`
-`isFinal`
-`comments`
"
Class {
	#name : 'ORActionMoveJavaLocalVariable',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTLocalVariable .

	super entity: anEntity
]
