"
I move a FamixJavaType in a MooseModel

"
Class {
	#name : 'ORActionMoveJavaType',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaType >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTType .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaType >> to: container [

	IllegalType check: container useTrait:  FamixTWithTypes .

	super to: container
]
