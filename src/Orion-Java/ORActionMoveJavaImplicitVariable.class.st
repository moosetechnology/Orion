"
I move a FamixJavaImplicitVariable in a MooseModel

"
Class {
	#name : 'ORActionMoveJavaImplicitVariable',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTImplicitVariable .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> to: container [

	IllegalType check: container useTrait:  FamixTWithImplicitVariables .

	super to: container
]
