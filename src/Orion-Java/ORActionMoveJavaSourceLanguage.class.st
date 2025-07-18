"
I move a FamixJavaSourceLanguage in a MooseModel

"
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

{ #category : 'accessing' }
ORActionMoveJavaSourceLanguage >> to: container [

	IllegalType check: container useTrait:  FamixTWithSourceLanguages .

	super to: container
]
