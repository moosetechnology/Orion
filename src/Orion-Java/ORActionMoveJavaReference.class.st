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
