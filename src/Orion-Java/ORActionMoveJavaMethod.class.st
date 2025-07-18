"
I move a FamixJavaMethod in a MooseModel

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
