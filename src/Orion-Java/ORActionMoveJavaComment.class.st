"
I move a FamixJavaComment in a MooseModel
"
Class {
	#name : 'ORActionMoveJavaComment',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaComment >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTComment .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaComment >> to: container [

	IllegalType check: container useTrait:  FamixTWithComments .

	super to: container
]
