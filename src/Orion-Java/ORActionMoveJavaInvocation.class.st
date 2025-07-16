Class {
	#name : 'ORActionMoveJavaInvocation',
	#superclass : 'ORActionMoveJava',
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionMoveJavaInvocation >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTInvocation .

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionMoveJavaInvocation >> to: container [

	IllegalType check: container useTrait:  FamixTWithInvocations .

	super to: container
]
