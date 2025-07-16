"
I move a new FamixJavaAnnotationTypeAttribute in a MooseModel
I need the following properties of the new annotationtypeattribute

-`annotationInstances`
-`receivingInvocations`
-`comments`
"
Class {
	#name : 'ORActionMoveJavaAnnotationTypeAttribute',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaAnnotationTypeAttribute >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTAnnotationTypeAttribute .

	super entity: anEntity
]
