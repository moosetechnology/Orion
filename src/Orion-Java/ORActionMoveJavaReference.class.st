"
I move a FamixJavaReference in a MooseModel

"
Class {
	#name : 'ORActionMoveJavaReference',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaReference >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTReference .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaReference >> to: container [

	IllegalType check: container useTrait:  FamixTWithReferences .

	super to: container
]
