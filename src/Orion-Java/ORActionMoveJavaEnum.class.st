"
I move a FamixJavaEnum in a MooseModel

"
Class {
	#name : 'ORActionMoveJavaEnum',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaEnum >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTEnum .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaEnum >> to: container [

	IllegalType check: container useTrait:  FamixTWithTypes .

	super to: container
]
