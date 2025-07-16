Class {
	#name : 'ORActionMoveJavaSourceLanguage',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaSourceLanguage >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTSourceLanguage .

	super entity: anEntity
]
