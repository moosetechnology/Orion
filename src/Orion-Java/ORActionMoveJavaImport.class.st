Class {
	#name : 'ORActionMoveJavaImport',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaImport >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTImport .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaImport >> to: container [

	IllegalType check: container useTrait:  FamixTWithImports .

	super to: container
]
