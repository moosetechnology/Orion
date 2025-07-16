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
