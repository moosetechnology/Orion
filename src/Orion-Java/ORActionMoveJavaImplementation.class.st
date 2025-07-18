"
I move a FamixJavaImplementation in a MooseModel
"
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

{ #category : 'accessing' }
ORActionMoveJavaImplementation >> to: container [

	IllegalType check: container useTrait: FamixJavaTWithInterfaces .

	super to: container
]
