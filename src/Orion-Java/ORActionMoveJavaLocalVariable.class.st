"
I move a FamixJavaLocalVariable in a MooseModel

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

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> to: container [

	IllegalType check: container useTrait:  FamixTWithLocalVariables .

	super to: container
]
