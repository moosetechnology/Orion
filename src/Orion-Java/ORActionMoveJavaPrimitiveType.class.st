"
I move a FamixJavaPrimitiveType in a MooseModel

"
Class {
	#name : 'ORActionMoveJavaPrimitiveType',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaPrimitiveType >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTPrimitiveType .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaPrimitiveType >> to: container [

	IllegalType check: container useTrait:  FamixTWithTypes .

	super to: container
]
