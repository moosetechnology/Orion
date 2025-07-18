"
I move a FamixJavaEnumValue in a MooseModel

"
Class {
	#name : 'ORActionMoveJavaEnumValue',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTEnumValue .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> to: container [

	IllegalType check: container useTrait:  FamixTWithEnumValues .

	super to: container
]
