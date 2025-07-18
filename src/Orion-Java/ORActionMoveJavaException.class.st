"
I move a FamixJavaException in a MooseModel

"
Class {
	#name : 'ORActionMoveJavaException',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaException >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTException .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaException >> to: container [

	IllegalType check: container useTrait:  FamixTWithExceptions .

	super to: container
]
