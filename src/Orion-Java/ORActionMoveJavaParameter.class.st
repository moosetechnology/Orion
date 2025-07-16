"
I move a new FamixJavaParameter in a MooseModel
I need the following properties of the new parameter

-`annotationInstances`
-`receivingInvocations`
-`isFinal`
-`comments`
"
Class {
	#name : 'ORActionMoveJavaParameter',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaParameter >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTParameter .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> to: container [

	IllegalType check: container useTrait:  FamixTWithParameters .

	super to: container
]
