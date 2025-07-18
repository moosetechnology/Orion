"
I move a FamixJavaClass in a MooseModel

"
Class {
	#name : 'ORActionMoveJavaClass',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaClass >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTClass.

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaClass >> to: container [

	IllegalType check: container useTrait:  FamixTWithClasses .

	super to: container
]
