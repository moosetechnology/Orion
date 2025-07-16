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

{ #category : 'accessing' }
ORActionMoveJavaAccess >> to: container [

	IllegalType check: container useTrait:  FamixTWithAccesses .

	super to: container
]
