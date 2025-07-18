"
I move a FamixJavaUnknownVariable in a MooseModel

"
Class {
	#name : 'ORActionMoveJavaUnknownVariable',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTUnknownVariable .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> to: container [

	IllegalType check: container useTrait:  FamixTWithTypes.

	super to: container
]
