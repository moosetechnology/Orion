"
I move a FamixJavaInheritance in a MooseModel
"
Class {
	#name : 'ORActionMoveJavaInheritance',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaInheritance >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTInheritance .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaInheritance >> to: container [

	IllegalType check: container useTrait:  FamixTWithInheritances .

	super to: container
]
