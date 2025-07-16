Class {
	#name : 'ORActionMoveJavaConcretization',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaConcretization >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTConcretization .

	super entity: anEntity
]
