Class {
	#name : 'ORActionMoveJavaImplementation',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaImplementation >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTImplementation .

	super entity: anEntity
]
