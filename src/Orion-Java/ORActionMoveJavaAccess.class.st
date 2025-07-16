Class {
	#name : 'ORActionMoveJavaAccess',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaAccess >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTAccess .

	super entity: anEntity
]
