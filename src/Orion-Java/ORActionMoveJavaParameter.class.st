"
I move a FamixJavaParameter in a MooseModel

"
Class {
	#name : 'ORActionMoveJavaParameter',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaParameter >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTParameter .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> to: container [

	IllegalType check: container useTrait:  FamixTWithParameters .

	super to: container
]
