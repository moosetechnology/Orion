"
I move a FamixJavaAttribute in a MooseModel

"
Class {
	#name : 'ORActionMoveJavaAttribute',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTAttribute .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> to: container [

	IllegalType check: container useTrait:  FamixTWithAttributes .

	super to: container
]
